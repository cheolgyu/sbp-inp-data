package export

import (
	"fmt"
	"io"
	"io/ioutil"
	"log"
	"os"
	"sync"

	"github.com/cheolgyu/stock/backend/dbment/src/dao"

	"golang.org/x/crypto/ssh"
)

var fnm_info = "info.json"
var fnm_data = "data.json"
var export_path = "tmp/"

func Exec() {
	//makeFile()
	//upload()
}

func MakeFile() {
	info, data := dao.SqlExport.Run()
	log.Println("export info len:", len(info))
	log.Println("export data len:", len(data))

	mkfile(export_path+fnm_info, info)
	mkfile(export_path+fnm_data, data)
}
func mkfile(fnm string, txt string) {
	f, err := os.Create(fnm)

	if err != nil {
		panic(err)
	}
	f.WriteString(txt)
	defer f.Close()
}

func upload() {
	var pem_path = "highserpot_stock.pem"
	var user = "ec2-user"
	var host = "54.180.224.126:22"
	var fnm = ""

	pemBytes, err := ioutil.ReadFile(pem_path)
	if err != nil {
		log.Fatal(err)
	}
	signer, err := ssh.ParsePrivateKey(pemBytes)
	if err != nil {
		log.Fatalf("parse key failed:%v", err)
	}

	config := &ssh.ClientConfig{
		User:            user,
		Auth:            []ssh.AuthMethod{ssh.PublicKeys(signer)},
		HostKeyCallback: ssh.InsecureIgnoreHostKey(),
	}

	client, err := ssh.Dial("tcp", host, config)
	if err != nil {
		log.Fatalf("ssh.Dial failed:%v", err)
	}
	defer client.Close()

	session, err := client.NewSession()
	if err != nil {
		log.Fatalf("ssh.Dial failed:%v", err)
	}
	defer session.Close()

	file, _ := os.Open(export_path)
	defer file.Close()
	stat, _ := file.Stat()

	wg := sync.WaitGroup{}
	wg.Add(1)

	go func() {
		hostIn, _ := session.StdinPipe()
		defer hostIn.Close()
		fmt.Fprintf(hostIn, "C0664 %d %s\n", stat.Size(), fnm)
		io.Copy(hostIn, file)
		fmt.Fprint(hostIn, "\x00")
		wg.Done()
	}()

	//session.Run("/usr/bin/scp -t " + fnm)

	session.Run("kill -9 $(lsof -t -i:5000)")
	session.Run("nohup ./data-server > log.txt 2>&1 &")

	wg.Wait()
}

/*
ps -ef | grep data-server

netstat -tnlp

*/

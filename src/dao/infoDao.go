package dao

import (
	"log"

	"github.com/cheolgyu/stock-write/src/db"
)

func UpdateInfo(nm string) {
	query := `
	UPDATE public.info
	SET  updated= now()
	WHERE name = $1
	`
	db.Conn.Exec(query)

	stmt, err := db.Conn.Prepare(query)
	if err != nil {
		log.Fatalln("쿼리 info Prepare:", err, nm)
		panic(err)
	}
	_, err = stmt.Exec(nm)
	if err != nil {
		log.Fatalln("쿼리 info udpate:", err, nm)
		panic(err)
	}

	stmt.Close()
}

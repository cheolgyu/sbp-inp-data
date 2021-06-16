package handler

import (
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

func BoundHandler() {
	b := Bound{}
	b.Save()
}

type Bound struct {
}

func (o *Bound) Save() {

	//코드목록 조회
	cl := CodeList{}
	cl.SelectAll()

	for i := range cl.List[:1] {
		cc := cl.List[i]
		log.Println(cc.Code)
		bc := BoundCode{Code: cc.Code}
		bc.Load()
		//코드에 해당하는 bound 테이블의 마지막 라인의 x1 조회
		// 없으면 가격 전체조회. 있으면 x1부터 조회.

		//가격목록 가져왔다.
		// 가격목록 돌려서 bound_point 만들고
		// 다만들어지면 디비 저장.

	}

}

type BoundCode struct {
	Code           string
	BoundCodeGtype []BoundCodeGtype
}

func (o *BoundCode) Load() {
	for i := range c.G_TYPE {
		g := c.G_TYPE[i]
		gcg := BoundCodeGtype{
			Gtype: g,
		}
		gcg.Load(o.Code)
	}
}

type BoundCodeGtype struct {
	Gtype string
	List  []model.Price
}

func (o *BoundCodeGtype) Load(code string) {
	schema_nm := c.SCHEMA_NAME_BOUND
	tb_nm := code + "_" + o.Gtype
	conn := db.Conn()
	defer conn.Close()

	// 없으면 table 생성
	if _, err := conn.Exec("select price.create_table_bound( $1 ,$2 )", schema_nm, tb_nm); err != nil {
		log.Println("테이블 생성 오류: ", schema_nm, tb_nm)
		log.Println("테이블 생성 오류: ", err)
		panic(err)
	}

	query := fmt.Sprintf(`select  * from "%s"."%s" idx `, schema_nm, tb_nm)
	rows, err := conn.Query(query)
	ChkErr(err)
	defer rows.Close()

	for rows.Next() {
		var name string
		var code string
		if err := rows.Scan(&name, &code); err != nil {
			log.Fatal(err)
			log.Fatal(err)
			panic(err)
		}
		// o.List = append(o.List, model.CompanyCode{
		// 	Code: code,
		// 	Name: name,
		// })
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
	}
}

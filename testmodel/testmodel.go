package testmodel


import (
	"log"
)

type ListedCompany struct{
  
}

func (sql ListedCompany) Exec()  {
	log.Println("testmodel      ListedCompany===========Exec")

}

type ListedCompanyB struct{
  
}

func (sql ListedCompanyB) Exec()  {
	log.Println("testmodel         ListedCompanyB===========Exec")

}
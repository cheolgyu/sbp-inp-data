package src

import (
	"fmt"
	"time"
)

func GetStartDate(str string) string{
	
	now := time.Now()
	var res = ""

	switch str {
	case "init-price":
		// 3달전
		convM :=3
		t := now.AddDate(0,-convM,0)
		res = fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())
	case "init-market":
		// 3달전
		convM :=3
		t := now.AddDate(0,-convM,0)
		res = fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())		
	}

	return res
}
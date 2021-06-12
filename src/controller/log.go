package controller

import (
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/service/info"
)

var LogTitls map[string]map[string]map[string]string
var LogTitleP1 string
var LogTitleP2 string
var LogTitleP3 string

var P_ID = ""

type LogController struct {
	P_ID  string
	Up_id string

	LogTitleP1 string
	LogTitleP2 string
	LogTitleP3 string

	InfoTitle string
	Content   string
}

func (c *LogController) End() {

	// insert log table
	c.Exec_Upid("end", "end")

	// update info table
	info.Update_Info(c.InfoTitle)
}

func (c *LogController) Init() {
	c.P_ID = P_ID
	c.ExecLog("start")
}

func (c *LogController) Process_LogID(run_type string) {

	P_ID = dao.SqlLog.Insert_Log_p_id(run_type, "", "", "")
}

func (c *LogController) ExecLog(content string) {

	c.Content = content
	t1, t2, t3, t4 := c.LogTitleP1, c.LogTitleP2, c.LogTitleP3, LogTitls[c.LogTitleP1][c.LogTitleP2][c.LogTitleP3]

	c.Up_id = dao.SqlLog.Insert_Log(c.P_ID, t1, t2, t3, t4)

}

func (c *LogController) Exec_Upid(logTitleP3 string, content string) {
	c.Content = content
	c.LogTitleP3 = logTitleP3
	t1, t2, t3, t4 := c.LogTitleP1, c.LogTitleP2, c.LogTitleP3, LogTitls[c.LogTitleP1][c.LogTitleP2][c.LogTitleP3]
	dao.SqlLog.Insert_Log_With_Up_id(c.P_ID, c.Up_id, t1, t2, t3, t4)
}

func init() {

	LogTitls = map[string]map[string]map[string]string{
		"init": {
			"listed_company": {
				"start":    "시작",
				"download": "다운로드",
				"parse":    "파싱",
				"seed":     "시드파일",
				"insert":   "저장",
				"end":      "종료",
			},
			"listed_company_state": {
				"start":    "시작",
				"download": "다운로드",
				"parse":    "파싱",
				"seed":     "시드파일",
				"insert":   "저장",
				"end":      "종료",
			},
			"price": {
				"start": "시작",
				"end":   "종료",
			},
			"market": {
				"start": "시작",
				"end":   "종료",
			},
		},
		"daily": {
			"listed_company": {
				"start":    "시작",
				"download": "다운로드",
				"parse":    "파싱",
				"seed":     "시드파일",
				"insert":   "저장",
				"end":      "종료",
			},
			"listed_company_state": {
				"start":    "시작",
				"download": "다운로드",
				"parse":    "파싱",
				"seed":     "시드파일",
				"insert":   "저장",
				"end":      "종료",
			},
			"price": {
				"start": "시작",
				"end":   "종료",
			},
			"high_point_price": {
				"start": "시작",
				"end":   "종료",
			},
			"high_point_market": {
				"start": "시작",
				"end":   "종료",
			},
			"market": {
				"start": "시작",
				"end":   "종료",
			},
		},
	}

}

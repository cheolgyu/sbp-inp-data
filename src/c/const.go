package c

import (
	"os"
	"time"
)

const DIR_COMPANY_DETAIL = "data/dataset/company_detail/"
const DIR_COMPANY_STATE = "data/dataset/company_state/"
const DIR_FILENAME_COMPANY_DETAIL = "company_detail.csv"
const DIR_FILENAME_COMPANY_STATE = "company_state.csv"
const DIR_PRICE = "data/dataset/price/"
const DIR_MARKET = "data/dataset/market/"
const DIR_BOUND = "data/dataset/bound/"
const DIR_BOUND_PRICE = DIR_BOUND + "price/"
const DIR_BOUND_MARKET = DIR_BOUND + "market/"
const DIR_BOUND_FILENAME_INFO = "info.csv"

const DOWNLOAD_URL_COMPANY_DETAIL_CODE = "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd"
const DOWNLOAD_URL_COMPANY_DETAIL_DATA = "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd"
const DOWNLOAD_URL_COMPANY_DETAIL_PARAMS = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT01901"
const DOWNLOAD_URL_COMPANY_STATE_CODE = "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd"
const DOWNLOAD_URL_COMPANY_STATE_DATA = "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd"
const DOWNLOAD_URL_COMPANY_STATE_PARAMS = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT02001"
const DOWNLOAD_URL_PRICE = "https://api.finance.naver.com/siseJson.naver?symbol=%s&requestType=1&startTime=%s&endTime=%s&timeframe=day"

const DOWNLOAD_DIR_COMPANY_DETAIL = "data/download/company_detail/"
const DOWNLOAD_DIR_COMPANY_STATE = "data/download/company_state/"
const DOWNLOAD_FILENAME_COMPANY_DETAIL = "company_detail.xlsx"
const DOWNLOAD_FILENAME_COMPANY_STATE = "company_state.xlsx"

const DOWNLOAD_DIR_PRICE = "data/download/price/"
const DOWNLOAD_DIR_MARKET = "data/download/market/"

const BOUND = "bound"
const PRICE = "price"
const MARKET = "market"
const COMPANY_DETAIL = "company_detail"
const COMPANY_STATE = "company_state"

const REPEAT_CNT_PRICE = 80
const REPEAT_STR_PRICE = "-"

const REPEAT_CNT_BOUND = 60
const REPEAT_STR_BOUND = "-"

var DownloadCompany bool
var DownloadPrice bool

const FILE_FLAG_APPEND = os.O_RDWR | os.O_CREATE | os.O_APPEND
const FILE_FLAG_TRUNC = os.O_RDWR | os.O_CREATE | os.O_TRUNC

const G_TYPE_LOW = "low"
const G_TYPE_HIGH = "high"
const G_TYPE_CLOSE = "close"
const G_TYPE_OPEN = "open"

var G_TYPE map[string]string

const PREFIX_TB_PRICE = PRICE + "_"
const SCHEMA_NAME_PRICE = PRICE

const PREFIX_TB_MARKET = MARKET + "_"
const SCHEMA_NAME_MARKET = MARKET

const SCHEMA_NAME_BOUND = BOUND

var PRICE_DATE_FORMAT = "20060102"
var PRICE_DEFAULT_START_DATE = ""

func init() {
	DownloadCompany = false
	DownloadPrice = false

	G_TYPE = make(map[string]string)
	G_TYPE[G_TYPE_LOW] = G_TYPE_LOW
	G_TYPE[G_TYPE_HIGH] = G_TYPE_HIGH
	G_TYPE[G_TYPE_CLOSE] = G_TYPE_CLOSE
	G_TYPE[G_TYPE_OPEN] = G_TYPE_OPEN

	PRICE_DEFAULT_START_DATE = time.Now().AddDate(-3, 0, 0).Format(PRICE_DATE_FORMAT)
}

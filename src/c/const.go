package c

import (
	"os"
	"time"
)

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

var DownloadCompany bool
var DownloadPrice bool

const FILE_FLAG_APPEND = os.O_RDWR | os.O_CREATE | os.O_APPEND
const FILE_FLAG_TRUNC = os.O_RDWR | os.O_CREATE | os.O_TRUNC

const G_TYPE_LOW = "low"
const G_TYPE_HIGH = "high"
const G_TYPE_CLOSE = "close"
const G_TYPE_OPEN = "open"

var G_TYPE map[string]string

const SCHEMA_NAME_PUBLIC = "public"
const TABLE_NAME_BOUND_STOCK = "bound_stock"
const TABLE_NAME_BOUND_MARKET = "bound_market"

const SCHEMA_NAME_COMPANY_CODE = "company"
const TABLE_NAME_COMPANY_CODE = "code"
const TABLE_NAME_COMPANY_DETAIL = "detail"
const TABLE_NAME_COMPANY_STATE = "state"

const SCHEMA_NAME_HISTORY = "hist"
const TABLE_NAME_HISTORY_BOUND_STOCK = "bound_stock"
const TABLE_NAME_HISTORY_BOUND_MARKET = "bound_market"
const TABLE_NAME_HISTORY_PRICE_STOCK = "price_stock"
const TABLE_NAME_HISTORY_PRICE_MARKET = "price_market"

const INFO_NAME_UPDATED = "updated"

var PRICE_DATE_FORMAT = "20060102"
var PRICE_DEFAULT_START_DATE = ""

const XLSX_SPLIT = "!,_"

var DB_MAX_CONN = 30

func init() {
	DownloadCompany = true
	DownloadPrice = true

	G_TYPE = make(map[string]string)
	G_TYPE[G_TYPE_CLOSE] = G_TYPE_CLOSE
	G_TYPE[G_TYPE_LOW] = G_TYPE_LOW
	G_TYPE[G_TYPE_HIGH] = G_TYPE_HIGH
	G_TYPE[G_TYPE_OPEN] = G_TYPE_OPEN

	PRICE_DEFAULT_START_DATE = time.Now().AddDate(-3, 0, 0).Format(PRICE_DATE_FORMAT)
}

package c

const DIR_COMPANY_DETAIL = "data/company_detail/"
const DIR_COMPANY_STATE = "data/company_state/"
const DIR_FILENAME_COMPANY_DETAIL = "company_detail.csv"
const DIR_FILENAME_COMPANY_STATE = "company_state.csv"
const DIR_PRICE = "data/price/"
const DIR_MARKET = "data/market/"
const DIR_POINT_PRICE = "data/high_point/price/"
const DIR_POINT_MARKET = "data/high_point/market/"

const DOWNLOAD_URL_COMPANY_DETAIL_CODE = "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd"
const DOWNLOAD_URL_COMPANY_DETAIL_DATA = "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd"
const DOWNLOAD_URL_COMPANY_DETAIL_PARAMS = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT01901"
const DOWNLOAD_URL_COMPANY_STATE_CODE = "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd"
const DOWNLOAD_URL_COMPANY_STATE_DATA = "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd"
const DOWNLOAD_URL_COMPANY_STATE_PARAMS = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT01901"
const DOWNLOAD_URL_PRICE = "https://api.finance.naver.com/siseJson.naver?symbol=%s&requestType=1&startTime=%s&endTime=%s&timeframe=day"

const DOWNLOAD_DIR_COMPANY_DETAIL = "download/company_detail/"
const DOWNLOAD_DIR_COMPANY_STATE = "download/company_state/"
const DOWNLOAD_FILENAME_COMPANY_DETAIL = "company_detail.xlsx"
const DOWNLOAD_FILENAME_COMPANY_STATE = "company_state.xlsx"

const DOWNLOAD_DIR_PRICE = "download/price/"
const DOWNLOAD_DIR_MARKET = "download/market/"

const PRICE = "price"
const MARKET = "market"
const COMPANY_DETAIL = "company_detail"
const COMPANY_STATE = "company_state"

var DownloadCompany bool
var DownloadPrice bool

func init() {
	DownloadCompany = false
	DownloadPrice = false
}

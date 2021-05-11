package model

type Day struct {
	Date 			string
    OpenPrice     	int
    HighPrice     	int
	LowPrice 		int
	ClosePrice   	int
    Volume 			int
	ForeignerBurnoutRate float64
}

type NaverChart struct {
	Short_code 			string
    DayList				[]Day
}

func (o NaverChart)GetSeedFilePath() string  {
	return "migrations/price/seed/"+o.GetTableName()+".sql"
}

func (o NaverChart)GetTableName() string  {
	return "tb_"+o.Short_code
}

func (o NaverChart)GetSchemaName(schema_type string) string  {
	return "price_"+schema_type
}

type MarketDay struct {
	Date 			string
    OpenPrice     	float64
    HighPrice     	float64
	LowPrice 		float64
	ClosePrice   	float64
    Volume 			int
	ForeignerBurnoutRate float64
}

type NaverChartMarket struct {
	Code 					string
    List				[]MarketDay
}

func (o NaverChartMarket)GetTableName() string  {
	return "tb_"+o.Code
}

func (o NaverChartMarket)GetSchemaName(schema_type string) string  {
	return "market_"+schema_type
}

func (o NaverChartMarket)GetTemFilePath() string  {
	return "migrations/market/seed"
}

func (o NaverChartMarket)GetSeedFilePath() string  {
	return "migrations/market/seed/"+o.GetTableName()+".sql"
}
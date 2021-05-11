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
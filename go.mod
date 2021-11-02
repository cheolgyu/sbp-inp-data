module github.com/cheolgyu/stock-write

go 1.16

require (
	github.com/PuerkitoBio/goquery v1.7.1
	github.com/cheolgyu/stock-write-common v0.0.0
	github.com/cheolgyu/stock-write-model v0.0.0
	github.com/lib/pq v1.10.3
	github.com/tealeg/xlsx v1.0.5
)

replace (
	github.com/cheolgyu/stock-write-common v0.0.0 => ../stock-write-common
	github.com/cheolgyu/stock-write-model v0.0.0 => ../stock-write-model
)

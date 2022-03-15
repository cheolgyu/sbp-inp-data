module github.com/cheolgyu/write

go 1.16

require (
	github.com/PuerkitoBio/goquery v1.7.1
	github.com/cheolgyu/base v0.0.0
	github.com/cheolgyu/model v0.0.0
	github.com/lib/pq v1.10.3
	github.com/tealeg/xlsx v1.0.5
)

replace (
	github.com/cheolgyu/base v0.0.0 => ../base
	github.com/cheolgyu/model v0.0.0 => ../model
)

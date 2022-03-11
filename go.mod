module github.com/cheolgyu/sbp-inp-data

go 1.16

require (
	github.com/PuerkitoBio/goquery v1.7.1
	github.com/cheolgyu/sbm-base v0.0.0
	github.com/cheolgyu/sbm-struct v0.0.0
	github.com/lib/pq v1.10.3
	github.com/tealeg/xlsx v1.0.5
)

replace (
	github.com/cheolgyu/sbm-base v0.0.0 => ../sbm-base
	github.com/cheolgyu/sbm-struct v0.0.0 => ../sbm-struct
)

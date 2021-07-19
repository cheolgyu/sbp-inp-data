package model

type Config struct {
	Id         int
	Upper_code string
	Upper_name string
	Code       string
	Name       string
}

type Code struct {
	Id        int
	Code      string
	Code_type int
}

package controller

type DefaultController interface {
    New() DefaultController
	Exec()
}

type TimeFrameController interface {
	New(string) TimeFrameController
	Exec()
}
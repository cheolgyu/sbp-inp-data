package controller

type DefaultController interface {
	New() DefaultController
	Exec()
}

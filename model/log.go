package model

import (

)


type Log interface {
	Set_id()
	Set_up_id(string) 
	Set_title(string) 
	Set_content(string) 
	
}

type Init_Log struct {
	id string
	up_id string
	title string
	content string
}

func (log Init_Log) Set_id(id string) {
	log.id = id
}

func (log Init_Log) Set_up_id(up_id string) {
	log.up_id = up_id
}


func (log Init_Log) Set_title(title string) {
	log.title = "init-"+title
}

func (log Init_Log) Set_content(content string) {
	log.content = content
}
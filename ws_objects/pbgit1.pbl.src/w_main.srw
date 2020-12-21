$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_hello from statictext within w_main
end type
type cb_close from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2043
integer height = 1572
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_hello st_hello
cb_close cb_close
end type
global w_main w_main

on w_main.create
this.st_hello=create st_hello
this.cb_close=create cb_close
this.Control[]={this.st_hello,&
this.cb_close}
end on

on w_main.destroy
destroy(this.st_hello)
destroy(this.cb_close)
end on

type st_hello from statictext within w_main
integer x = 498
integer y = 452
integer width = 859
integer height = 252
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Hello git   rev. 1.3"
boolean focusrectangle = false
end type

type cb_close from commandbutton within w_main
integer x = 1545
integer y = 1268
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean cancel = true
end type

event clicked;close (parent)
end event


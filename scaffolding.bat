@echo off
rails generate scaffold Usuario nombre:string usuario_sia:string clave:string vinculacion:string

rails generate scaffold Edificio nombre:string identificador:integer numeroDeBanos:integer

rails generate scaffold Espacio numero:integer capacidad:integer disponibilidad:boolean

rails generate scaffold Solicitud nombredelevento:string numeroDeAsistentes:integer descripcion:text estado:string computadores:boolean videoBeam:boolean comentarios:text expedicion:date

rails generate scaffold Administrador nombre:string correo:string clave:string

bundle install
rails db:migrate



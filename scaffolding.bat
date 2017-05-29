@echo off
rails generate scaffold Usuario nombre:string usuario_sia:string clave:string vinculacion:string

rails generate scaffold Edificio nombre:string identificador:integer numeroDeBanos:integer

rails generate scaffold Espacio numero:integer capacidad:integer disponibilidad:boolean

rails generate scaffold Solicitud nombredelevento:string numeroDeAsistentes:integer descripcion:text estado:string computadores:boolean videoBeam:boolean comentarios:text expedicion:date

rails generate scaffold Administrador nombre:string correo:string clave:string

rails generate scaffold Puntual fechaYHoraInicio:datetime fechaYHoraFin:datetime

rails generate scaffold Permanente numeroDeVecesEvento:integer fechaInicio:date fechaFin:date

rails generate scaffold Salon videoBeam:boolean televisor:boolean

rails generate scaffold SalaDeComputo videoBeam:boolean tipoDePc:string

rails generate scaffold Auditorio videoBeam:boolean atril:boolean

rails generate scaffold SalaDeConferencia

bundle install
rails db:migrate



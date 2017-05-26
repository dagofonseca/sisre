json.extract! solicitud, :id, :nombredelevento, :numeroDeAsistentes, :descripcion, :estado, :computadores, :videoBeam, :comentarios, :expedicion, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)

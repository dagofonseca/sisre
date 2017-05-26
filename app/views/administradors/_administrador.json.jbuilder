json.extract! administrador, :id, :nombre, :correo, :clave, :created_at, :updated_at
json.url administrador_url(administrador, format: :json)

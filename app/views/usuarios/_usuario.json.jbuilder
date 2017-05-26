json.extract! usuario, :id, :nombre, :usuario_sia, :clave, :vinculacion, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

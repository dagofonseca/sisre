json.extract! usuario, :id, :nombre, :rol, :email, :contrasena, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

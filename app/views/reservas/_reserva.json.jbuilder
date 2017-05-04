json.extract! reserva, :id, :identificador, :numUsu, :fecha, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)

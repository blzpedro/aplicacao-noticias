json.extract! diario, :id, :titulo, :corpo, :created_at, :updated_at
json.url diario_url(diario, format: :json)

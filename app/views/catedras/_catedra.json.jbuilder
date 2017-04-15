json.extract! catedra, :id, :nombre, :descripcion, :logo_url, :video_url, :created_at, :updated_at
json.url catedra_url(catedra, format: :json)

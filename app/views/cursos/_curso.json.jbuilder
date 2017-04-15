json.extract! curso, :id, :nombre, :descripcion, :contenido, :dirigido_a, :back_img, :created_at, :updated_at
json.url curso_url(curso, format: :json)

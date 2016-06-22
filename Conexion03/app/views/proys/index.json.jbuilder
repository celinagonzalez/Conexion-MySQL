json.array!(@proys) do |proy|
  json.extract! proy, :id, :nombre_proy, :horas, :Alumno_id
  json.url proy_url(proy, format: :json)
end

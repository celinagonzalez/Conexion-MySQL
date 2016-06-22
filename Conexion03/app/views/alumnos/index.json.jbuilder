json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :apellido, :nac
  json.url alumno_url(alumno, format: :json)
end

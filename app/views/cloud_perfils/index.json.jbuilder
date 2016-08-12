json.array!(@cloud_perfils) do |cloud_perfil|
  json.extract! cloud_perfil, :id, :fabricante, :nombre, :certificacion, :tecnologia, :concepto, :periodo_realizacion, :fecha_vencimiento
  json.url cloud_perfil_url(cloud_perfil, format: :json)
end

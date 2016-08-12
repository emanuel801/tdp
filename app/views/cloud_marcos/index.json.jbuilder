json.array!(@cloud_marcos) do |cloud_marco|
  json.extract! cloud_marco, :id, :provedor, :descripcion, :tipo, :gasto_ingreso, :producto, :num_contrato, :catalogado, :saldo, :moneda, :vigencia
  json.url cloud_marco_url(cloud_marco, format: :json)
end

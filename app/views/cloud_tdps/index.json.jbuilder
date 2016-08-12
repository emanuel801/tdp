json.array!(@cloud_tdps) do |cloud_tdp|
  json.extract! cloud_tdp, :id, :cliente, :descripcion, :licitaciones, :pre_venta, :jefe_proyecto, :monto_inc_igv, :contrato, :conformidad, :ote, :plantilla_economica, :observacion
  json.url cloud_tdp_url(cloud_tdp, format: :json)
end

class CreateCloudTdps < ActiveRecord::Migration
  def change
    create_table :cloud_tdps do |t|
      t.string :cliente
      t.string :descripcion
      t.string :licitaciones
      t.string :pre_venta
      t.string :jefe_proyecto
      t.float :monto_inc_igv
      t.string :contrato
      t.string :conformidad
      t.string :ote
      t.string :plantilla_economica
      t.text :observacion

      t.timestamps null: false
    end
  end
end

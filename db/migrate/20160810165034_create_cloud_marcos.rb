class CreateCloudMarcos < ActiveRecord::Migration
  def change
    create_table :cloud_marcos do |t|
      t.string :provedor
      t.string :descripcion
      t.string :tipo
      t.string :gasto_ingreso
      t.string :producto
      t.string :num_contrato
      t.string :catalogado
      t.string :saldo
      t.string :moneda
      t.string :vigencia

      t.timestamps null: false
    end
  end
end

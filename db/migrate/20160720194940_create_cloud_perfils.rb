class CreateCloudPerfils < ActiveRecord::Migration
  def change
    create_table :cloud_perfils do |t|
      t.string :fabricante
      t.string :nombre
      t.string :certificacion
      t.string :tecnologia
      t.string :concepto
      t.string :periodo_realizacion
      t.string :fecha_vencimiento

      t.timestamps null: false
    end
  end
end

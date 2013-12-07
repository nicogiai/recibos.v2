class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.date :inicio
      t.date :fin
      t.string :descripcion

      t.timestamps
    end
  end
end

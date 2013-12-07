class CreateImpuestosPeriodos < ActiveRecord::Migration
  def change
    create_table :impuestos_periodos do |t|
      t.references :periodo
      t.references :impuesto
      t.date :vencimiento0
      t.date :vencimiento1
      t.date :vencimiento2
      t.date :vencimiento3
      t.date :vencimiento4
      t.date :vencimiento5
      t.date :vencimiento6
      t.date :vencimiento7
      t.date :vencimiento8
      t.date :vencimiento9
      t.decimal :importe, :precision => 8, :scale => 2

      t.timestamps
    end
    add_index :impuestos_periodos, :periodo_id
    add_index :impuestos_periodos, :impuesto_id
  end
end

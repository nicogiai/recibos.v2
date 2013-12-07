class CreateHistoricoImpuestos < ActiveRecord::Migration
  def change
    create_table :historico_impuestos do |t|
      t.references :cliente
      t.references :impuestos_periodo
      t.references :recibo
      t.boolean :cliente_avisado
      t.date :vencimiento
      t.date :fecha_pago
      t.decimal :importe, :precision => 8, :scale => 2
      t.text :notas

      t.timestamps
    end
    add_index :historico_impuestos, :cliente_id
    add_index :historico_impuestos, :impuestos_periodo_id
    add_index :historico_impuestos, :recibo_id
  end
end

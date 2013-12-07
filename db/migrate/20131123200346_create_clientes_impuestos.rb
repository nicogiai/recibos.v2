class CreateClientesImpuestos < ActiveRecord::Migration
  def change
    create_table :clientes_impuestos do |t|
      t.decimal :importe, :precision => 8, :scale => 2
      t.boolean :recibe_mail
      t.references :cliente
      t.references :impuesto

      t.timestamps
    end
    add_index :clientes_impuestos, :cliente_id
    add_index :clientes_impuestos, :impuesto_id
  end
end

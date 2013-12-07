class HistoricoImpuesto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :impuestos_periodo
  belongs_to :recibo
  attr_accessible :cliente_avisado, :fecha_pago, :importe, :notas, :vencimiento
end

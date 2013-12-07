class ClientesImpuesto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :impuesto
  attr_accessible :importe, :recibe_mail

  validates :cliente_id, presence: true
  validates :impuesto_id, presence: true
end

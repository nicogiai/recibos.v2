class Cliente < ActiveRecord::Base
  attr_accessible :cant_adherentes, :clave_fiscal, :clave_muni, :cliente, :cuit, :domicilio1, :domicilio2, :email1, :email2, :fecha_inicio, :iibb_cm, :notas, :telefono1, :telefono2, :telefono3

  has_many :clientes_impuestos
  has_many :historico_impuestos

  has_many :impuestos, :through => :clientes_impuestos
  has_many :recibos, :through => :historico_impuestos

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email1, format: { with: VALID_EMAIL_REGEX }
  validates :email2, format: { with: VALID_EMAIL_REGEX }
  validates :cliente, presence: true

end

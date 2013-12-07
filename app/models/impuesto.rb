class Impuesto < ActiveRecord::Base
  attr_accessible :cm, :default_vencimiento0, :default_vencimiento1, :default_vencimiento2, :default_vencimiento3, :default_vencimiento4, :default_vencimiento5, :default_vencimiento6, :default_vencimiento7, :default_vencimiento8, :default_vencimiento9, :importe, :impuesto

  has_many :clientes_impuestos
  has_many :impuestos_periodos
  
  has_many :clientes, :through => :clientes_impuestos
  has_many :periodos, :through => :impuestos_periodos
end

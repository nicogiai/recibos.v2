class Periodo < ActiveRecord::Base
  attr_accessible :descripcion, :fin, :inicio

  has_many :impuestos_periodos

  has_many :impuestos, :through => :impuestos_periodos
  
end

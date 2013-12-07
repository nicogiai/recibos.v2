class Recibo < ActiveRecord::Base
  attr_accessible :concepto, :notas, :otros_importes

  has_many :historico_impuestos

end

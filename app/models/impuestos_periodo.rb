class ImpuestosPeriodo < ActiveRecord::Base
  belongs_to :periodo
  belongs_to :impuesto
  attr_accessible :importe, :vencimiento0, :vencimiento1, :vencimiento2, :vencimiento3, :vencimiento4, :vencimiento5, :vencimiento6, :vencimiento7, :vencimiento8, :vencimiento9

  validates :periodo_id, presence: true
  validates :impuesto_id, presence: true

  def after_initialize
  	#some code
  	#self.vencimiento0 ||= periodo.default_vencimiento0
  	#self.vencimiento9 ||= periodo.default_vencimiento9
  end

end

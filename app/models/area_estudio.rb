class AreaEstudio < ActiveRecord::Base
  has_many :curso_areas
  has_many :catedra_areas

  def self.get_areas_destacadas(limit_values=FALSE)

    if limit_values
      parametro = Parametro.find_by('nombre=?','MAX_AREA_ESTUDIO_INDEX')

      if parametro.blank?
        area_estudios = AreaEstudio.where('destacado=?',TRUE).order(:secuencia)
      else
        area_estudios = AreaEstudio.where('destacado=?',TRUE).limit(parametro.valor.to_i).order(:secuencia)
      end
    else
      area_estudios = AreaEstudio.where('destacado=?',TRUE).order(:secuencia)
    end

  end

  def self.get_area_by_secuencia(secuencia=0)
    return nil if secuencia <= 0

    return AreaEstudio.find_by(secuencia: secuencia)
  end
end

class Catedra < ActiveRecord::Base
  has_many :cursos
  has_many :catedra_areas

  def self.get_catedras_by_area_estudio(area_estudio_id = 0)
    return nil if area_estudio_id <= 0

    catedras = Catedra.joins(:catedra_areas).where('catedra_areas.area_estudio_id=?', area_estudio_id).order(:id)

    return catedras

  end


end

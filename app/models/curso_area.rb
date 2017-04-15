class CursoArea < ActiveRecord::Base
  belongs_to :curso
  belongs_to :area_estudio

end

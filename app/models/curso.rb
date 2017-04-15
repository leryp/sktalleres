class Curso < ActiveRecord::Base
  has_many :curso_tipos
  belongs_to :catedra
  has_many :curso_areas
end

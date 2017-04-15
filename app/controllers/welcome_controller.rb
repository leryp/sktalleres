class WelcomeController < ApplicationController
  def index
    @area_estudios = AreaEstudio.get_areas_destacadas(TRUE)

    if params[:id]
      @area_estudio_id = params[:id]
    else
      area_estudio_activa = AreaEstudio.get_area_by_secuencia(1)
      @area_estudio_id = area_estudio_activa.id
    end

    @catedras = Catedra.get_catedras_by_area_estudio(@area_estudio_id.to_i)

  end
end
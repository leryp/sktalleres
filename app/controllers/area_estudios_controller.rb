class AreaEstudiosController < ApplicationController
  before_action :set_area_estudio, only: [:show, :edit, :update, :destroy]

  # GET /area_estudios
  # GET /area_estudios.json
  def index

    parametro = Parametro.find_by('nombre=?','MAX_AREA_ESTUDIO_INDEX')

    if parametro.blank?
      @area_estudios = AreaEstudio.where('destacado=?',TRUE)
    else
      @area_estudios = AreaEstudio.where('destacado=?',TRUE).limit(parametro.valor.to_i)
    end

  end

  # GET /area_estudios/1
  # GET /area_estudios/1.json
  def show
  end

  # GET /area_estudios/new
  def new
    @area_estudio = AreaEstudio.new
  end

  # GET /area_estudios/1/edit
  def edit
  end

  # POST /area_estudios
  # POST /area_estudios.json
  def create
    @area_estudio = AreaEstudio.new(area_estudio_params)

    respond_to do |format|
      if @area_estudio.save
        format.html { redirect_to @area_estudio, notice: 'Area estudio was successfully created.' }
        format.json { render :show, status: :created, location: @area_estudio }
      else
        format.html { render :new }
        format.json { render json: @area_estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_estudios/1
  # PATCH/PUT /area_estudios/1.json
  def update
    respond_to do |format|
      if @area_estudio.update(area_estudio_params)
        format.html { redirect_to @area_estudio, notice: 'Area estudio was successfully updated.' }
        format.json { render :show, status: :ok, location: @area_estudio }
      else
        format.html { render :edit }
        format.json { render json: @area_estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_estudios/1
  # DELETE /area_estudios/1.json
  def destroy
    @area_estudio.destroy
    respond_to do |format|
      format.html { redirect_to area_estudios_url, notice: 'Area estudio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_estudio
      @area_estudio = AreaEstudio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_estudio_params
      params.require(:area_estudio).permit(:nombre)
    end
end

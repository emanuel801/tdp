class CloudPerfilsController < ApplicationController
  before_action :set_cloud_perfil, only: [:show, :edit, :update, :destroy]

  # GET /cloud_perfils
  # GET /cloud_perfils.json
  def index
    @cloud_perfils = CloudPerfil.all
  end

  # GET /cloud_perfils/1
  # GET /cloud_perfils/1.json
  def show
  end

  # GET /cloud_perfils/new
  def new
    @cloud_perfil = CloudPerfil.new
  end

  # GET /cloud_perfils/1/edit
  def edit
  end

  # POST /cloud_perfils
  # POST /cloud_perfils.json
  def create
    @cloud_perfil = CloudPerfil.new(cloud_perfil_params)

    respond_to do |format|
      if @cloud_perfil.save
        format.html { redirect_to @cloud_perfil, notice: 'Cloud perfil was successfully created.' }
        format.json { render :show, status: :created, location: @cloud_perfil }
      else
        format.html { render :new }
        format.json { render json: @cloud_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloud_perfils/1
  # PATCH/PUT /cloud_perfils/1.json
  def update
    respond_to do |format|
      if @cloud_perfil.update(cloud_perfil_params)
        format.html { redirect_to @cloud_perfil, notice: 'Cloud perfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud_perfil }
      else
        format.html { render :edit }
        format.json { render json: @cloud_perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_perfils/1
  # DELETE /cloud_perfils/1.json
  def destroy
    @cloud_perfil.destroy
    respond_to do |format|
      format.html { redirect_to cloud_perfils_url, notice: 'Cloud perfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_perfil
      @cloud_perfil = CloudPerfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloud_perfil_params
      params.require(:cloud_perfil).permit(:fabricante, :nombre, :certificacion, :tecnologia, :concepto, :periodo_realizacion, :fecha_vencimiento)
    end
end

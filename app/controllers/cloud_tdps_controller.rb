class CloudTdpsController < ApplicationController
  before_action :set_cloud_tdp, only: [:show, :edit, :update, :destroy]

  # GET /cloud_tdps
  # GET /cloud_tdps.json
  def index
    @cloud_tdps = CloudTdp.all
  end

	
  # GET /cloud_tdps/1
  # GET /cloud_tdps/1.json
  def show
  end

  # GET /cloud_tdps/new
  def new
    @cloud_tdp = CloudTdp.new
  end

  # GET /cloud_tdps/1/edit
  def edit
  end

  # POST /cloud_tdps
  # POST /cloud_tdps.json
  def create
    @cloud_tdp = CloudTdp.new(cloud_tdp_params)

    respond_to do |format|
      if @cloud_tdp.save
        format.html { redirect_to @cloud_tdp, notice: 'Cloud tdp was successfully created.' }
        format.json { render :show, status: :created, location: @cloud_tdp }
      else
        format.html { render :new }
        format.json { render json: @cloud_tdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloud_tdps/1
  # PATCH/PUT /cloud_tdps/1.json
  def update
    respond_to do |format|
      if @cloud_tdp.update(cloud_tdp_params)
        format.html { redirect_to @cloud_tdp, notice: 'Cloud tdp was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud_tdp }
      else
        format.html { render :edit }
        format.json { render json: @cloud_tdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_tdps/1
  # DELETE /cloud_tdps/1.json
  def destroy
    @cloud_tdp.destroy
    respond_to do |format|
      format.html { redirect_to cloud_tdps_url, notice: 'Cloud tdp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_tdp
      @cloud_tdp = CloudTdp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloud_tdp_params
      params.require(:cloud_tdp).permit(:cliente, :descripcion, :licitaciones, :pre_venta, :jefe_proyecto, :monto_inc_igv, :contrato, :conformidad, :ote, :plantilla_economica, :observacion)
    end
end

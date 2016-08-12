class CloudMarcosController < ApplicationController
  before_action :set_cloud_marco, only: [:show, :edit, :update, :destroy]

  # GET /cloud_marcos
  # GET /cloud_marcos.json
  def index
    @cloud_marcos = CloudMarco.all
  end

  # GET /cloud_marcos/1
  # GET /cloud_marcos/1.json
  def show
  end

  # GET /cloud_marcos/new
  def new
    @cloud_marco = CloudMarco.new
  end

  # GET /cloud_marcos/1/edit
  def edit
  end

  # POST /cloud_marcos
  # POST /cloud_marcos.json
  def create
    @cloud_marco = CloudMarco.new(cloud_marco_params)

    respond_to do |format|
      if @cloud_marco.save
        format.html { redirect_to @cloud_marco, notice: 'Cloud marco was successfully created.' }
        format.json { render :show, status: :created, location: @cloud_marco }
      else
        format.html { render :new }
        format.json { render json: @cloud_marco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloud_marcos/1
  # PATCH/PUT /cloud_marcos/1.json
  def update
    respond_to do |format|
      if @cloud_marco.update(cloud_marco_params)
        format.html { redirect_to @cloud_marco, notice: 'Cloud marco was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud_marco }
      else
        format.html { render :edit }
        format.json { render json: @cloud_marco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloud_marcos/1
  # DELETE /cloud_marcos/1.json
  def destroy
    @cloud_marco.destroy
    respond_to do |format|
      format.html { redirect_to cloud_marcos_url, notice: 'Cloud marco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_marco
      @cloud_marco = CloudMarco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloud_marco_params
      params.require(:cloud_marco).permit(:provedor, :descripcion, :tipo, :gasto_ingreso, :producto, :num_contrato, :catalogado, :saldo, :moneda, :vigencia)
    end
end

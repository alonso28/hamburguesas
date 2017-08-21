class CarlsController < ApplicationController
  before_action :set_carl, only: [:show, :edit, :update, :destroy]

  # GET /carls
  # GET /carls.json
  def index
    @carls = Carl.all
  end

def reporte 
  @carls = Carl.all
  @precioguardado = @carls.sort_by(&:precio)
  @cantidadguardado = @carls.sort_by(&:cantidad)
  @pesoguardado = @carls.sort_by(&:peso)
  
  
end
 # GET /carls/1
  # GET /carls/1.json
  def show
  end

  # GET /carls/new
  def new
    @carl = Carl.new
  end

  # GET /carls/1/edit
  def edit
  end

  # POST /carls
  # POST /carls.json
  def create
    @carl = Carl.new(carl_params)

    respond_to do |format|
      if @carl.save
        format.html { redirect_to @carl, notice: 'Carl was successfully created.' }
        format.json { render :show, status: :created, location: @carl }
      else
        format.html { render :new }
        format.json { render json: @carl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carls/1
  # PATCH/PUT /carls/1.json
  def update
    respond_to do |format|
      if @carl.update(carl_params)
        format.html { redirect_to @carl, notice: 'Carl was successfully updated.' }
        format.json { render :show, status: :ok, location: @carl }
      else
        format.html { render :edit }
        format.json { render json: @carl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carls/1
  # DELETE /carls/1.json
  def destroy
    @carl.destroy
    respond_to do |format|
      format.html { redirect_to carls_url, notice: 'Carl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carl
      @carl = Carl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carl_params
      params.require(:carl).permit(:precio, :cantidad, :peso, :tamaño)
    end
end

class PermanentesController < ApplicationController
  before_action :set_permanente, only: [:show, :edit, :update, :destroy]

  # GET /permanentes
  # GET /permanentes.json
  def index
    @permanentes = Permanente.all
  end

  # GET /permanentes/1
  # GET /permanentes/1.json
  def show
  end

  # GET /permanentes/new
  def new
    @permanente = Permanente.new
  end

  # GET /permanentes/1/edit
  def edit
  end

  # POST /permanentes
  # POST /permanentes.json
  def create
    @permanente = Permanente.new(permanente_params)

    respond_to do |format|
      if @permanente.save
        format.html { redirect_to @permanente, notice: 'Permanente was successfully created.' }
        format.json { render :show, status: :created, location: @permanente }
      else
        format.html { render :new }
        format.json { render json: @permanente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permanentes/1
  # PATCH/PUT /permanentes/1.json
  def update
    respond_to do |format|
      if @permanente.update(permanente_params)
        format.html { redirect_to @permanente, notice: 'Permanente was successfully updated.' }
        format.json { render :show, status: :ok, location: @permanente }
      else
        format.html { render :edit }
        format.json { render json: @permanente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permanentes/1
  # DELETE /permanentes/1.json
  def destroy
    @permanente.destroy
    respond_to do |format|
      format.html { redirect_to permanentes_url, notice: 'Permanente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permanente
      @permanente = Permanente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permanente_params
      params.require(:permanente).permit(:numeroDeVecesEvento, :fechaInicio, :fechaFin)
    end
end

class PuntualsController < ApplicationController
  before_action :set_puntual, only: [:show, :edit, :update, :destroy]

  # GET /puntuals
  # GET /puntuals.json
  def index
    @puntuals = Puntual.all
  end

  # GET /puntuals/1
  # GET /puntuals/1.json
  def show
  end

  # GET /puntuals/new
  def new
    @puntual = Puntual.new
  end

  # GET /puntuals/1/edit
  def edit
  end

  # POST /puntuals
  # POST /puntuals.json
  def create
    @puntual = Puntual.new(puntual_params)

    respond_to do |format|
      if @puntual.save
        format.html { redirect_to @puntual, notice: 'Puntual was successfully created.' }
        format.json { render :show, status: :created, location: @puntual }
      else
        format.html { render :new }
        format.json { render json: @puntual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puntuals/1
  # PATCH/PUT /puntuals/1.json
  def update
    respond_to do |format|
      if @puntual.update(puntual_params)
        format.html { redirect_to @puntual, notice: 'Puntual was successfully updated.' }
        format.json { render :show, status: :ok, location: @puntual }
      else
        format.html { render :edit }
        format.json { render json: @puntual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puntuals/1
  # DELETE /puntuals/1.json
  def destroy
    @puntual.destroy
    respond_to do |format|
      format.html { redirect_to puntuals_url, notice: 'Puntual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puntual
      @puntual = Puntual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puntual_params
      params.require(:puntual).permit(:fechaYHoraInicio, :fechaYHoraFin)
    end
end

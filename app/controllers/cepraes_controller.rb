class CepraesController < ApplicationController
  before_action :set_ceprae, only: [:show, :edit, :update, :destroy]

  # GET /cepraes
  # GET /cepraes.json
  def index
    @cepraes = Ceprae.all
  end

  # GET /cepraes/1
  # GET /cepraes/1.json
  def show
  end

  # GET /cepraes/new
  def new
    @ceprae = Ceprae.new
  end

  # GET /cepraes/1/edit
  def edit
  end

  # POST /cepraes
  # POST /cepraes.json
  def create
    @ceprae = Ceprae.new(ceprae_params)

    respond_to do |format|
      if @ceprae.save
        format.html { redirect_to @ceprae, notice: 'Ceprae was successfully created.' }
        format.json { render :show, status: :created, location: @ceprae }
      else
        format.html { render :new }
        format.json { render json: @ceprae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cepraes/1
  # PATCH/PUT /cepraes/1.json
  def update
    respond_to do |format|
      if @ceprae.update(ceprae_params)
        format.html { redirect_to @ceprae, notice: 'Ceprae was successfully updated.' }
        format.json { render :show, status: :ok, location: @ceprae }
      else
        format.html { render :edit }
        format.json { render json: @ceprae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cepraes/1
  # DELETE /cepraes/1.json
  def destroy
    @ceprae.destroy
    respond_to do |format|
      format.html { redirect_to cepraes_url, notice: 'Ceprae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceprae
      @ceprae = Ceprae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ceprae_params
      params.require(:ceprae).permit(:correo, :contrasena, :identificador)
    end
end

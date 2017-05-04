class BienestarsController < ApplicationController
  before_action :set_bienestar, only: [:show, :edit, :update, :destroy]

  # GET /bienestars
  # GET /bienestars.json
  def index
    @bienestars = Bienestar.all
  end

  # GET /bienestars/1
  # GET /bienestars/1.json
  def show
  end

  # GET /bienestars/new
  def new
    @bienestar = Bienestar.new
  end

  # GET /bienestars/1/edit
  def edit
  end

  # POST /bienestars
  # POST /bienestars.json
  def create
    @bienestar = Bienestar.new(bienestar_params)

    respond_to do |format|
      if @bienestar.save
        format.html { redirect_to @bienestar, notice: 'Bienestar was successfully created.' }
        format.json { render :show, status: :created, location: @bienestar }
      else
        format.html { render :new }
        format.json { render json: @bienestar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bienestars/1
  # PATCH/PUT /bienestars/1.json
  def update
    respond_to do |format|
      if @bienestar.update(bienestar_params)
        format.html { redirect_to @bienestar, notice: 'Bienestar was successfully updated.' }
        format.json { render :show, status: :ok, location: @bienestar }
      else
        format.html { render :edit }
        format.json { render json: @bienestar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bienestars/1
  # DELETE /bienestars/1.json
  def destroy
    @bienestar.destroy
    respond_to do |format|
      format.html { redirect_to bienestars_url, notice: 'Bienestar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bienestar
      @bienestar = Bienestar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bienestar_params
      params.require(:bienestar).permit(:correo, :contrasena, :identificador)
    end
end

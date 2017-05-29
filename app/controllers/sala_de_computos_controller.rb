class SalaDeComputosController < ApplicationController
  before_action :set_sala_de_computo, only: [:show, :edit, :update, :destroy]

  # GET /sala_de_computos
  # GET /sala_de_computos.json
  def index
    @sala_de_computos = SalaDeComputo.all
  end

  # GET /sala_de_computos/1
  # GET /sala_de_computos/1.json
  def show
  end

  # GET /sala_de_computos/new
  def new
    @sala_de_computo = SalaDeComputo.new
  end

  # GET /sala_de_computos/1/edit
  def edit
  end

  # POST /sala_de_computos
  # POST /sala_de_computos.json
  def create
    @sala_de_computo = SalaDeComputo.new(sala_de_computo_params)

    respond_to do |format|
      if @sala_de_computo.save
        format.html { redirect_to @sala_de_computo, notice: 'Sala de computo was successfully created.' }
        format.json { render :show, status: :created, location: @sala_de_computo }
      else
        format.html { render :new }
        format.json { render json: @sala_de_computo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sala_de_computos/1
  # PATCH/PUT /sala_de_computos/1.json
  def update
    respond_to do |format|
      if @sala_de_computo.update(sala_de_computo_params)
        format.html { redirect_to @sala_de_computo, notice: 'Sala de computo was successfully updated.' }
        format.json { render :show, status: :ok, location: @sala_de_computo }
      else
        format.html { render :edit }
        format.json { render json: @sala_de_computo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sala_de_computos/1
  # DELETE /sala_de_computos/1.json
  def destroy
    @sala_de_computo.destroy
    respond_to do |format|
      format.html { redirect_to sala_de_computos_url, notice: 'Sala de computo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala_de_computo
      @sala_de_computo = SalaDeComputo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sala_de_computo_params
      params.require(:sala_de_computo).permit(:videoBeam, :tipoDePc)
    end
end

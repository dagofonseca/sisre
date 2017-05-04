class AuditoriosController < ApplicationController
  before_action :set_auditorio, only: [:show, :edit, :update, :destroy]

  # GET /auditorios
  # GET /auditorios.json
  def index
    @auditorios = Auditorio.all
  end

  # GET /auditorios/1
  # GET /auditorios/1.json
  def show
  end

  # GET /auditorios/new
  def new
    @auditorio = Auditorio.new
  end

  # GET /auditorios/1/edit
  def edit
  end

  # POST /auditorios
  # POST /auditorios.json
  def create
    @auditorio = Auditorio.new(auditorio_params)

    respond_to do |format|
      if @auditorio.save
        format.html { redirect_to @auditorio, notice: 'Auditorio was successfully created.' }
        format.json { render :show, status: :created, location: @auditorio }
      else
        format.html { render :new }
        format.json { render json: @auditorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auditorios/1
  # PATCH/PUT /auditorios/1.json
  def update
    respond_to do |format|
      if @auditorio.update(auditorio_params)
        format.html { redirect_to @auditorio, notice: 'Auditorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @auditorio }
      else
        format.html { render :edit }
        format.json { render json: @auditorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditorios/1
  # DELETE /auditorios/1.json
  def destroy
    @auditorio.destroy
    respond_to do |format|
      format.html { redirect_to auditorios_url, notice: 'Auditorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auditorio
      @auditorio = Auditorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auditorio_params
      params.require(:auditorio).permit(:amplificacion, :proyector)
    end
end

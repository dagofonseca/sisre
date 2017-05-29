class SalaDeConferenciaController < ApplicationController
  before_action :set_sala_de_conferencium, only: [:show, :edit, :update, :destroy]

  # GET /sala_de_conferencia
  # GET /sala_de_conferencia.json
  def index
    @sala_de_conferencia = SalaDeConferencium.all
  end

  # GET /sala_de_conferencia/1
  # GET /sala_de_conferencia/1.json
  def show
  end

  # GET /sala_de_conferencia/new
  def new
    @sala_de_conferencium = SalaDeConferencium.new
  end

  # GET /sala_de_conferencia/1/edit
  def edit
  end

  # POST /sala_de_conferencia
  # POST /sala_de_conferencia.json
  def create
    @sala_de_conferencium = SalaDeConferencium.new(sala_de_conferencium_params)

    respond_to do |format|
      if @sala_de_conferencium.save
        format.html { redirect_to @sala_de_conferencium, notice: 'Sala de conferencium was successfully created.' }
        format.json { render :show, status: :created, location: @sala_de_conferencium }
      else
        format.html { render :new }
        format.json { render json: @sala_de_conferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sala_de_conferencia/1
  # PATCH/PUT /sala_de_conferencia/1.json
  def update
    respond_to do |format|
      if @sala_de_conferencium.update(sala_de_conferencium_params)
        format.html { redirect_to @sala_de_conferencium, notice: 'Sala de conferencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @sala_de_conferencium }
      else
        format.html { render :edit }
        format.json { render json: @sala_de_conferencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sala_de_conferencia/1
  # DELETE /sala_de_conferencia/1.json
  def destroy
    @sala_de_conferencium.destroy
    respond_to do |format|
      format.html { redirect_to sala_de_conferencia_url, notice: 'Sala de conferencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala_de_conferencium
      @sala_de_conferencium = SalaDeConferencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sala_de_conferencium_params
      params.fetch(:sala_de_conferencium, {})
    end
end

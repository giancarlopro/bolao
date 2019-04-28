class BoloesController < ApplicationController
  before_action :set_bolao, only: [:show, :edit, :update, :destroy]

  # GET /boloes
  # GET /boloes.json
  def index
    @boloes = Bolao.all
  end

  # GET /boloes/1
  # GET /boloes/1.json
  def show
  end

  # GET /boloes/new
  def new
    @bolao = Bolao.new
  end

  # GET /boloes/1/edit
  def edit
  end

  # POST /boloes
  # POST /boloes.json
  def create
    @bolao = Bolao.new(bolao_params)

    respond_to do |format|
      if @bolao.save
        format.html { redirect_to @bolao, notice: 'Bolao was successfully created.' }
        format.json { render :show, status: :created, location: @bolao }
      else
        format.html { render :new }
        format.json { render json: @bolao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boloes/1
  # PATCH/PUT /boloes/1.json
  def update
    respond_to do |format|
      if @bolao.update(bolao_params)
        format.html { redirect_to @bolao, notice: 'Bolao was successfully updated.' }
        format.json { render :show, status: :ok, location: @bolao }
      else
        format.html { render :edit }
        format.json { render json: @bolao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boloes/1
  # DELETE /boloes/1.json
  def destroy
    @bolao.destroy
    respond_to do |format|
      format.html { redirect_to boloes_url, notice: 'Bolao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolao
      @bolao = Bolao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolao_params
      params.require(:bolao).permit(:nome, :ativo)
    end
end

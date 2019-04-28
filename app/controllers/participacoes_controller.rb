class ParticipacoesController < ApplicationController
  before_action :set_participacao, only: [:show, :edit, :update, :destroy]

  # GET /participacoes
  # GET /participacoes.json
  def index
    @participacoes = Participacao.all
  end

  # GET /participacoes/1
  # GET /participacoes/1.json
  def show
  end

  # GET /participacoes/new
  def new
    @participacao = Participacao.new
  end

  # GET /participacoes/1/edit
  def edit
  end

  # POST /participacoes
  # POST /participacoes.json
  def create
    @participacao = Participacao.new(participacao_params)

    respond_to do |format|
      if @participacao.save
        format.html { redirect_to @participacao, notice: 'Participacao was successfully created.' }
        format.json { render :show, status: :created, location: @participacao }
      else
        format.html { render :new }
        format.json { render json: @participacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participacoes/1
  # PATCH/PUT /participacoes/1.json
  def update
    respond_to do |format|
      if @participacao.update(participacao_params)
        format.html { redirect_to @participacao, notice: 'Participacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @participacao }
      else
        format.html { render :edit }
        format.json { render json: @participacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participacoes/1
  # DELETE /participacoes/1.json
  def destroy
    @participacao.destroy
    respond_to do |format|
      format.html { redirect_to participacoes_url, notice: 'Participacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participacao
      @participacao = Participacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participacao_params
      params.require(:participacao).permit(:user_id, :bolao_id)
    end
end

class UrlencurtadasController < ApplicationController
  before_action :set_urlencurtada, only: [:show, :edit, :update, :destroy]

  # GET /urlencurtadas
  # GET /urlencurtadas.json
  def index
    @urlencurtadas = Urlencurtada.all
  end

  # GET /urlencurtadas/1
  # GET /urlencurtadas/1.json
  def show
  end

  # GET /urlencurtadas/new
  def new
    @urlencurtada = Urlencurtada.new
  end

  # GET /urlencurtadas/1/edit
  def edit
  end

  # POST /urlencurtadas
  # POST /urlencurtadas.json
  def create
    @urlencurtada = Urlencurtada.new(urlencurtada_params)

    respond_to do |format|
      if @urlencurtada.save
        format.html { redirect_to @urlencurtada, notice: 'Urlencurtada was successfully created.' }
        format.json { render :show, status: :created, location: @urlencurtada }
      else
        format.html { render :new }
        format.json { render json: @urlencurtada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urlencurtadas/1
  # PATCH/PUT /urlencurtadas/1.json
  def update
    respond_to do |format|
      if @urlencurtada.update(urlencurtada_params)
        format.html { redirect_to @urlencurtada, notice: 'Urlencurtada was successfully updated.' }
        format.json { render :show, status: :ok, location: @urlencurtada }
      else
        format.html { render :edit }
        format.json { render json: @urlencurtada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urlencurtadas/1
  # DELETE /urlencurtadas/1.json
  def destroy
    @urlencurtada.destroy
    respond_to do |format|
      format.html { redirect_to urlencurtadas_url, notice: 'Urlencurtada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urlencurtada
      @urlencurtada = Urlencurtada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urlencurtada_params
      params.require(:urlencurtada).permit(:url, :urlencurtada)
    end
end

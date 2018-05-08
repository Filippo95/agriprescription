class ColturesController < ApplicationController
  before_action :set_colture, only: [:show, :edit, :update, :destroy]

  # GET /coltures
  # GET /coltures.json
  def index
    @coltures = Colture.all
    @categories=CatColture.where("id<?",1000000)
  end

  # GET /coltures/1
  # GET /coltures/1.json
  def show
    
    @categories=CatColture.where("id<?",1000000)
  end

  # GET /coltures/new
  def new
    @colture = Colture.new
    
    @categories=CatColture.where("id<?",1000000)
  end

  # GET /coltures/1/edit
  def edit
    
    @categories=CatColture.where("id<?",1000000)
  end

  # POST /coltures
  # POST /coltures.json
  def create
    @colture = Colture.new(colture_params)

    respond_to do |format|
      if @colture.save
        format.html { redirect_to @colture, notice: 'Colture was successfully created.' }
        format.json { render :show, status: :created, location: @colture }
      else
        format.html { render :new }
        format.json { render json: @colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coltures/1
  # PATCH/PUT /coltures/1.json
  def update
    respond_to do |format|
      if @colture.update(colture_params)
        format.html { redirect_to @colture, notice: 'Colture was successfully updated.' }
        format.json { render :show, status: :ok, location: @colture }
      else
        format.html { render :edit }
        format.json { render json: @colture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coltures/1
  # DELETE /coltures/1.json
  def destroy
    @colture.destroy
    respond_to do |format|
      format.html { redirect_to coltures_url, notice: 'Colture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colture
      @colture = Colture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colture_params
      params.require(:colture).permit(:name, :id_cat)
    end
end

class MaxDosesController < ApplicationController
  before_action :set_max_dose, only: [:show, :edit, :update, :destroy]

  # GET /max_doses
  # GET /max_doses.json
  def index
    @max_doses = MaxDose.all
    @products=Product.where("id<?",10000000)
    @coltures=Colture.where("id<?",10000000)
  end

  # GET /max_doses/1
  # GET /max_doses/1.json
  def show
    @products=Product.where("id<?",10000000)
    @coltures=Colture.where("id<?",10000000)
  end

  # GET /max_doses/new
  def new
    @max_dose = MaxDose.new
    @products=Product.where("id<?",10000000)
    @coltures=Colture.where("id<?",10000000)
  end

  # GET /max_doses/1/edit
  def edit
    @products=Product.where("id<?",10000000)
    @coltures=Colture.where("id<?",10000000)
  end

  # POST /max_doses
  # POST /max_doses.json
  def create
    @max_dose = MaxDose.new(max_dose_params)

    respond_to do |format|
      if @max_dose.save
        format.html { redirect_to @max_dose, notice: 'Max dose was successfully created.' }
        format.json { render :show, status: :created, location: @max_dose }
      else
        format.html { render :new }
        format.json { render json: @max_dose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /max_doses/1
  # PATCH/PUT /max_doses/1.json
  def update
    respond_to do |format|
      if @max_dose.update(max_dose_params)
        format.html { redirect_to @max_dose, notice: 'Max dose was successfully updated.' }
        format.json { render :show, status: :ok, location: @max_dose }
      else
        format.html { render :edit }
        format.json { render json: @max_dose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /max_doses/1
  # DELETE /max_doses/1.json
  def destroy
    @max_dose.destroy
    respond_to do |format|
      format.html { redirect_to max_doses_url, notice: 'Max dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_max_dose
      @max_dose = MaxDose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def max_dose_params
      params.require(:max_dose).permit(:id_product, :id_colture, :max_gr_ha)
    end
end

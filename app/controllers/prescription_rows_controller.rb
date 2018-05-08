class PrescriptionRowsController < ApplicationController
  before_action :set_prescription_row, only: [:show, :edit, :update, :destroy]

  # GET /prescription_rows
  # GET /prescription_rows.json
  def index
    @prescription_rows = PrescriptionRow.all
  end

  # GET /prescription_rows/1
  # GET /prescription_rows/1.json
  def show
    @products=Product.where("id<?",100000000)
  end

  # GET /prescription_rows/new
  def new
    @prescription_row = PrescriptionRow.new
  end

  # GET /prescription_rows/1/edit
  def edit
  end

  # POST /prescription_rows
  # POST /prescription_rows.json
  def create
    @prescription_row = PrescriptionRow.new(prescription_row_params)
    @prescription=Prescription.where(id: @prescription_row.id_prescription).first

    respond_to do |format|
      if @prescription_row.save
        format.html { redirect_to @prescription, notice: 'Prescription row was successfully created.' }
        format.json { render :show, status: :created, location: @prescription_row }
      else
        format.html { render :new }
        format.json { render json: @prescription_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescription_rows/1
  # PATCH/PUT /prescription_rows/1.json
  def update
    
    @prescription=Prescription.where(id: @prescription_row.id_prescription).first
    respond_to do |format|
      if @prescription_row.update(prescription_row_params)
        format.html { redirect_to @prescription, notice: 'Prescription row was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescription_row }
      else
        format.html { render :edit }
        format.json { render json: @prescription_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescription_rows/1
  # DELETE /prescription_rows/1.json
  def destroy
    
    @prescription=Prescription.where(id: @prescription_row.id_prescription).first
    @prescription_row.destroy
    respond_to do |format|
      format.html { redirect_to @prescription, notice: 'Prescription row was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription_row
      @prescription_row = PrescriptionRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescription_row_params
      params.require(:prescription_row).permit(:id_prescription, :id_product, :dose_per_ha)
    end
end

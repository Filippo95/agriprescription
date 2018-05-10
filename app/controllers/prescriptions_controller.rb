class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: [:show, :edit, :update, :destroy]

  # GET /prescriptions
  # GET /prescriptions.json
  def index
    @prescriptions = Prescription.all
    @lands=Land.where("id<?",10000000000)
    @companies=Company.where("id<?",10000000000)
    @coltures=Colture.where("id<?",10000000000)
    
  end

  # GET /prescriptions/1
  # GET /prescriptions/1.json
  def show
    
    @companies=Company.where("id<?",10000000000)
    @lands=Land.where("id<?",10000000000)
    @coltures=Colture.where("id<?",10000000000)
    @rows=PrescriptionRow.where("id_prescription=?",@prescription.id)
    @products=Product.where("id<?",10000000000)
    @dosemax=MaxDose.where("id_colture=?",@lands.where(id: @prescription.land).first.id_colture)
     respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "ricetta", :layout => 'pdf.html.erb',:template=>"prescriptions/pdf.html.erb" 
      end
    end
  end
  
  # GET /prescriptions/sendpdf/1
  def sendpdf
    @prescription = Prescription.find(params[:id])
    SendPdf.sendprescription(@prescription).deliver_now
  end

  # GET /prescriptions/new
  def new
    @prescription = Prescription.new
    @companies=Company.where("id<?",10000000000)
    @lands=Land.where("id<?",10000000000)
    @coltures=Colture.where("id<?",10000000000)
  end

  # GET /prescriptions/1/edit
  def edit
    
    @companies=Company.where("id<?",10000000000)
    @lands=Land.where("id<?",10000000000)
    @coltures=Colture.where("id<?",10000000000)
  end

  # POST /prescriptions
  # POST /prescriptions.json
  def create
    @prescription = Prescription.new(prescription_params)

    respond_to do |format|
      if @prescription.save
        format.html { redirect_to @prescription, notice: 'Prescription was successfully created.' }
        format.json { render :show, status: :created, location: @prescription }
      else
        format.html { render :new }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1
  # PATCH/PUT /prescriptions/1.json
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to @prescription, notice: 'Prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1
  # DELETE /prescriptions/1.json
  def destroy
    @prescription.destroy
    respond_to do |format|
      format.html { redirect_to prescriptions_url, notice: 'Prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescription_params
      params.require(:prescription).permit(:date, :id_company, :land, :note)
    end
end

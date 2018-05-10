class SendPdf < ApplicationMailer

 default from: "filippo.luppi@gmail.com"
 
  def sendprescription(prescription)
 
    @prescription=prescription
    @company=Company.where(id: @prescription.id_company).first
    @lands=Land.where("id<?",10000000000)
    @coltures=Colture.where("id<?",10000000000)
    @rows=PrescriptionRow.where("id_prescription=?",@prescription.id)
    @products=Product.where("id<?",10000000000)
    @dosemax=MaxDose.where("id_colture=?",@lands.where(id: @prescription.land).first.id_colture)
    mail to: @company.mail, subject: "Ricetta"
  end
end

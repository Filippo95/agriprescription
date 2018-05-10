# Preview all emails at http://localhost:3000/rails/mailers/send_pdf
class SendPdfPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_pdf/prescription
  def prescription
    SendPdf.prescription
  end

end

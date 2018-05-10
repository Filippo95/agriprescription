require 'test_helper'

class SendPdfTest < ActionMailer::TestCase
  test "prescription" do
    mail = SendPdf.prescription
    assert_equal "Prescription", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

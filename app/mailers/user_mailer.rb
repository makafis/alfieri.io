class UserMailer < ApplicationMailer

  def form_email
    mail(to: 'vinnyalfieri@gmail.com', subject: "Website Form Submission")
  end

end

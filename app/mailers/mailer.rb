class Mailer < ActionMailer::Base

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.contact_email.subject
  #
  def contact_email(params)
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    @client_ip = params[:client_ip]
    @request = params[:request].inspect
    mail to: "dutra@mit.edu", from: "Zelda Theodore <zeldatheodore@gmail.com>", subject: "#{@name} sent you a contact email"
  end
end


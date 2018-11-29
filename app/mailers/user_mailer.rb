class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation_order.subject
  #
  def confirmation_order

    @visiter = params[:visiter]
    mail(to: @visiter.email, subject: 'confirmation order')
  end
end

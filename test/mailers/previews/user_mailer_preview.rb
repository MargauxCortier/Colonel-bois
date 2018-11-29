# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/confirmation_order
  default :from => "colonelboisboit@gmail.com"

  def confirmation_order

    UserMailer.with(user: User.last).confirmation_order
  end

end

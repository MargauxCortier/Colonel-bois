class VisitorMailer < ApplicationMailer
	

	def confirmation_order

   @visitor = params[:visitor]
   mail(to: @visitor.email, subject: 'confirmation order')
 end
end

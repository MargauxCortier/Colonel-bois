class TemplateController < ApplicationController
	# after_checkout :send_email_to_admin



	def index
		@item = Item.all
	end

	def call_to_action
		@visiter = Visiter.new
		@visiter.email = params["email"]
    @visiter.save

    respond_to do |format|
      if @visiter.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.with(visiter: @visiter).confirmation_order.deliver_now

        format.html { redirect_to("/") }
        format.json { render json: @visiter, status: :created, location: @visiter }
      else
        format.html { render action: 'new' }
        format.json { render json: @visiter.errors, status: :unprocessable_entity }
      end
    end
	end

	def about
	end

	def shop_full
		@item = Item.all
	end

	def showproduct
		@individual = Item.find(params[:id])
	end

	def itemtest
		@item = Item.all
	end

	def show_test
	  @individual = Item.find(params[:id])
	end

	# def send_email_to_admin
	# 	@user = User.new
	#   @user.email = params["email"]
	#   @user.save


	#   respond_to do |format|
	#     if @user.save
	#       # Tell the UserMailer to send a welcome email after save
	#       UserMailer.with(user: @user).confirmation_email.deliver_now

	#       format.html { redirect_to(root_path) }
	#       format.json { render json: @user, status: :created, location: @user }
	#     # else
	#     #   format.html { render action: 'new' }
	#     #   format.json { render json: @user.errors, status: :unprocessable_entity }
	#     end
	#   end
	# end

end

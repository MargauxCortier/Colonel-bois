class TemplateController < ApplicationController

	def index
		@item = Item.all
	end

	def call_to_action
		@visitor = Visitor.new
        @visitor.email = params["email"]
   @visitor.save

   respond_to do |format|
     if @visitor.save
       # Tell the UserMailer to send a welcome email after save
       VisitorMailer.with(visitor: @visitor).confirmation_order.deliver_now

       format.html { redirect_to("/") }
       format.json { render json: @visitor, status: :created, location: @visitor }
     else
       format.html { render action: 'new' }
       format.json { render json: @visitor.errors, status: :unprocessable_entity }
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

end

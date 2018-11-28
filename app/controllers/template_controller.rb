class TemplateController < ApplicationController

	def index
		@item = Item.all
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

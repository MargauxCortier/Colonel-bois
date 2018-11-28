class TemplateController < ApplicationController

	def index
	end

	def about
	end

	def shop_filter
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

	def showproduct
	end

end

class QuotesController < ApplicationController
	def index
		@quotes = Quote.all
	end
  def create
  	@quote = Quote.new(post_id: params[:post_id], title: params[:title], content: params[:content], link: params[:link])
  	if @quote.save
  		flash[:alert] = "Downloaded Successfully"
  		redirect_to root_path
  	else
  		flash[:alert] = "Action failed"
  		redirect_to root_path
  	end
  end
end

class UrlsController < ApplicationController
	def index
		@url = Url.new
		@urls = Url.order("created_at DESC")
	end

	def create
		 respond_to do |format|
        format.js 
        end
		@url = Url.new(url_params)
		if @url.save
		@urls = Url.all
		end
	end

	def show
		@url = Url.find(params[:id])
		redirect_to "http://#{@url.basicUrl}"
		
	end


	private

	def url_params
		params.require(:url).permit(:basicUrl)
	end
end

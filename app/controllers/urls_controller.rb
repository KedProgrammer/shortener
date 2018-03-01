class UrlsController < ApplicationController
	def index
		@url = Url.new
	end

	def create
		 respond_to do |format|
        format.js 
        end
		@url = Url.new(url_params)
		@url.save
		@urls = Url.all

	end

	private

	def url_params
		params.require(:url).permit(:basicUrl)
	end
end

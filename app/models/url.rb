class Url < ApplicationRecord
	before_save :create_url
	validates :basicUrl, :presence => { :message => " cannot be blank" }

	private
	def create_url
		self.newUrl = "shorten/#{SecureRandom.urlsafe_base64[0..5]}"
	end
end
	
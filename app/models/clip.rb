class Clip < ApplicationRecord
	belongs_to :call_to_action
	belongs_to :user
	UNIQUE_ID_LENGTH = 7
	validates :page_link, presence: true, on: :create 
	before_create :generate_short_url 

	def generate_short_url 
		url = ([*('a'..'z'),*('A'..'Z'),*('0'..'9')].sample(UNIQUE_ID_LENGTH)).join
		old_url = Clip.find_by(short_link: url)
		if old_url.present? 
			self.generate_short_url
		else 
			self.short_link = url 
		end 
	end 
end

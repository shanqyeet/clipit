class Clip < ApplicationRecord
	belongs_to :call_to_action
	belongs_to :user
	has_many :cta_counts
	UNIQUE_ID_LENGTH = 7
	validates :page_link, presence: true, on: :create 
	before_create :generate_short_url 
	enum status: {active: 0, archived: 1}

	def generate_short_url 
		url = ([*('a'..'z'),*('A'..'Z'),*('0'..'9')].sample(UNIQUE_ID_LENGTH)).join
		old_url = Clip.find_by(short_link: url)
		if old_url.present? 
			self.generate_short_url
		else 
			self.short_link = url 
		end 
	end 

	def self.total_count(user)
		all = self.where(user_id: user.id)
		count = 0 
		all.each do |x| 
			count += x.count 
		end 
		return count
	end
end

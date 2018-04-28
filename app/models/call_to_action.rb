class CallToAction < ApplicationRecord
	belongs_to :user
	belongs_to :brand
	has_many :clips
	has_many :cta_counts
	enum status: {active: 0, archived: 1}


	def self.total_count 
		all = self.all
		count = 0 
		all.each do |x| 
			count += x.count 
		end 
		return count
	end
end

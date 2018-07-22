class CallToAction < ApplicationRecord
	belongs_to :user
	belongs_to :brand
	has_many :clips, dependent: :destroy
	has_many :cta_counts, dependent: :destroy
	enum status: {active: 0, archived: 1}


	def self.total_count(user)
		all = self.where(user_id: user.id)
		count = 0 
		all.each do |x| 
			count += x.count 
		end 
		return count
	end
end

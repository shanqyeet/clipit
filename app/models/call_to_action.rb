class CallToAction < ApplicationRecord
	belongs_to :user
	belongs_to :brand
	has_many :clips
	enum status: {active: 0, archived: 1}

end

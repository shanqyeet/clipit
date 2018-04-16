class CallToAction < ApplicationRecord
	belongs_to :user
	belongs_to :brand
	has_many :clips


end

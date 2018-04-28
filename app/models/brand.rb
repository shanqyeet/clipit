class Brand < ApplicationRecord
	belongs_to :user
	has_many :call_to_actions, dependent: :destroy
	mount_uploader :logo, LogoUploader
end

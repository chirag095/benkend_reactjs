class CityLocation < ApplicationRecord
	# mount_uploader :image, ImageUploader 
	has_many :projects, dependent: :destroy 
has_one_attached :image
	def id_title
		"#{id} #{title}"
	end	
end

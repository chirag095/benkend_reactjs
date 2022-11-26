class CityLocation < ApplicationRecord
	# mount_uploader :image, ImageUploader 
	has_many :projects, dependent: :nullify
has_one_attached :image
	def id_title
		"#{id} #{title}"
	end	
end

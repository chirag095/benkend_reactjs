class Amenity < ApplicationRecord
	has_one_attached :image
	has_many :projects, dependent: :nullify
end

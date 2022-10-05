class Logo < ApplicationRecord
	has_one_attached :image
	has_many :projects,dependent: :destroy
end

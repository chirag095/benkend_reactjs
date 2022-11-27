class Logo < ApplicationRecord
	has_one_attached :image
	has_one :projects,dependent: :nullify
end

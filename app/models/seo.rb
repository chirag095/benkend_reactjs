class Seo < ApplicationRecord
	has_many :projects , dependent: :destroy
end

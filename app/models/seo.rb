class Seo < ApplicationRecord
	has_many :projects , dependent: :nullify
end

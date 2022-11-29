class Seo < ApplicationRecord
	has_many :projects , dependent: :nullify
	has_many :city_ls,dependent: :destroy 
	has_many :localities,dependent: :destroy 
end

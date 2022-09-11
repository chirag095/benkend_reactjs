class Locality < ApplicationRecord
	has_many :projects,dependent: :nullify
	belongs_to :city_l,optional:true
end

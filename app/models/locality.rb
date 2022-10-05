class Locality < ApplicationRecord
	has_many :projects,dependent: :nullify
	belongs_to :city_l,optional:true
	extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
end

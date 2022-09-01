class Project < ApplicationRecord
   validates :title, presence: true
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  belongs_to :amenity
  belongs_to :builder
 
  belongs_to :city_l ,optional:true
  belongs_to :locality
  belongs_to :state
  belongs_to :seo,optional:true
  
end

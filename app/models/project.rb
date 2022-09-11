class Project < ApplicationRecord
    has_one_attached :image
    validates :title, presence: true
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]

     belongs_to :amenity
     belongs_to :builder
     belongs_to :city_l ,optional:true
     belongs_to :locality,optional:true
     belongs_to :state
     belongs_to :seo,optional:true
     belongs_to :highlight, optional:true
     has_many   :flats,dependent: :destroy

   def image_url
      Rails.application.routes.url_helpers.url_for(image)
   end
end

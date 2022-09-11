class CityL < ApplicationRecord
  has_one_attached :image
  has_many :projects, dependent: :nullify
  has_many :localities, dependent: :destroy

def image_url
  Rails.application.routes.url_helpers.url_for(image)
end
end
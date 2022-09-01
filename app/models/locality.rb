class Locality < ApplicationRecord
	has_many :projects, dependent: :destroy 
end

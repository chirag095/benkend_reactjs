class State < ApplicationRecord
	has_many :projects, dependent: :destroy 
end

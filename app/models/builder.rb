class Builder < ApplicationRecord
	has_many :projects, dependent: :destroy 
end

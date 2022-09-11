class State < ApplicationRecord
	has_many :projects, dependent: :nullify
end

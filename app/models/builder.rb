class Builder < ApplicationRecord
	has_many :projects, dependent: :nullify
end

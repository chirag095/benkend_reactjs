class Highlight < ApplicationRecord
	has_many :projects ,dependent: :nullify
end

class Ship < ApplicationRecord
	validates :name, :tonnage, presence: true
end

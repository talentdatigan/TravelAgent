class Customer < ApplicationRecord
	validates :last_name, :first_name,:has_good_credit, presence: true
end

class User < ApplicationRecord
	has_many :restaurants
	has_many :foods, through: :restaurants
end

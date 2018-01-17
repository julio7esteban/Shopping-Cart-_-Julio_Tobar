class Category < ApplicationRecord
	validates :name, presence: true
	 has_many :has_categories
	
end
 
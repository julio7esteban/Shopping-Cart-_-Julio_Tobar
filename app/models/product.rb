class Product < ApplicationRecord
	belongs_to :user
  has_many :order_items
  attr_reader :Categories

   after_create :save_categories
  
   has_attached_file :cover, styles: {medium: "400x200" , :thumb => "100x100"}
   validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  def categories= (value)
  @categories = value

end

  def save_categories
    @categories.each do |category_id|
     HasCategory.create(category_id: category_id, products_id: self.id)
    end
  end
end

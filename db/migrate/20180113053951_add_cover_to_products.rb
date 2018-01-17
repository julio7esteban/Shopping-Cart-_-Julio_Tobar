class AddCoverToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :products,:cover
  	  end
end

class AddCategoryRefToPantries < ActiveRecord::Migration[5.2]
  def change
    add_reference :pantries, :category, foreign_key: true
  end
end

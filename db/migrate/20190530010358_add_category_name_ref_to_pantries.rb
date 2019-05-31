class AddCategoryNameRefToPantries < ActiveRecord::Migration[5.2]
  def change
    add_column :pantries, :foreign_key, :string
    add_column :pantries, :true, :string
  end
end

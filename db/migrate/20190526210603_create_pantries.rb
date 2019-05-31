class CreatePantries < ActiveRecord::Migration[5.2]
  def change
    create_table :pantries do |t|
      t.string :item_name
      t.string :category
      t.integer :qty
      t.date :date_of_purchase
      t.string :order_more

      t.timestamps
    end
  end
end

class CreateProductsCarts < ActiveRecord::Migration
  def change
    create_table :products_carts do |t|
    	t.integer :product_id
    	t.integer :user_id
    	t.decimal :amount
    	t.string :status

      t.timestamps null: false
    end
  end
end

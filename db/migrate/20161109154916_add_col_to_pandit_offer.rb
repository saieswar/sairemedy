class AddColToPanditOffer < ActiveRecord::Migration
  def change
  	add_column :pandit_offers, :user_id, :integer
  end
end

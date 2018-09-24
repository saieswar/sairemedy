class CreatePanditOffers < ActiveRecord::Migration
  def change
    create_table :pandit_offers do |t|
      t.integer :pandit_id
      t.integer :offer_id
      t.boolean :active
      t.string :note
      t.timestamps null: false
    end
  end
end

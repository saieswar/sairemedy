class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string  :status
      t.string  :description
      t.boolean :active_offer
      t.timestamps null: false
    end
  end
end

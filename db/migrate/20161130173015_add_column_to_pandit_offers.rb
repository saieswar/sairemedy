class AddColumnToPanditOffers < ActiveRecord::Migration
  def change
    add_column :pandit_offers, :booking_date, :date
  end
end

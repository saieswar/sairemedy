class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :mobile

      t.timestamps null: false
    end
  end
end

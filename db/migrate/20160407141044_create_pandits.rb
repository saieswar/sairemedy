class CreatePandits < ActiveRecord::Migration
  def change
    create_table :pandits do |t|
      t.boolean :astrologers
      t.boolean :numerologist
      t.string :door_no
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

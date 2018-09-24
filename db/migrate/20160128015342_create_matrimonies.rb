class CreateMatrimonies < ActiveRecord::Migration
  def change
    create_table :matrimonies do |t|
      t.string :full_name
      t.string :surname
      t.string :qualification
      t.references :cast, index: true, foreign_key: true
      t.string :category
      t.string :gowtram
      t.string :income
      t.string :working_company
      t.string :company_address
      t.string :designation
      t.string :marriage_status
      t.string :height
      t.string :weight
      t.string :hobbies
      t.string :body_skin_color
      t.references :nakshatra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

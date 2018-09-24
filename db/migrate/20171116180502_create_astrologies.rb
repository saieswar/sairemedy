class CreateAstrologies < ActiveRecord::Migration
  def change
    create_table :astrologies do |t|
      t.string :first_sign
      t.string :second_sign
      t.string :remedy
      t.string :pdf_path
      t.timestamps null: false
    end
  end
end

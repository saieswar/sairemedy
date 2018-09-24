class CreateAstroPdfs < ActiveRecord::Migration
  def change
    create_table :astro_pdfs do |t|
      t.string :avatar
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

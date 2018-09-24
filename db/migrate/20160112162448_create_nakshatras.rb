class CreateNakshatras < ActiveRecord::Migration
  def change
    create_table :nakshatras do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

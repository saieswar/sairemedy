class CreateDashboardImages < ActiveRecord::Migration
  def change
    create_table :dashboard_images do |t|
    	t.string :image
    	t.text :description

      t.timestamps null: false
    end
  end
end

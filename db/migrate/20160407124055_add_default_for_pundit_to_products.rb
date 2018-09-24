class AddDefaultForPunditToProducts < ActiveRecord::Migration
  def change
    add_column :products, :default_for_pandit, :boolean
  end
end

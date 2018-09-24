class AddColumnsToPandit < ActiveRecord::Migration
	def change
		add_column :pandits, :working_as, :string
		add_column :pandits, :experience, :string
		add_column :pandits, :address, :text
		add_column :pandits, :district, :string
	end
end

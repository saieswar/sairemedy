class RenameColumnFromPandit < ActiveRecord::Migration	
	def change
		rename_column :pandits, :astrologers, :deals
		change_column :pandits, :deals, :string
		remove_column :pandits, :numerologist
	end

	def self.down
		rename_column :pandits, :deals, :astrologers    
		change_column :pandits, :astrologers, :boolean
		add_column :pandits, :numerologist, :boolean
	end
end

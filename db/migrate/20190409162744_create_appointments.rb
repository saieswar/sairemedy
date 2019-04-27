class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :email
    	t.string :name
    	t.string :phone
    	t.text :reason
    	
      t.timestamps null: false
    end
  end
end

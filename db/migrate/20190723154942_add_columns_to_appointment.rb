class AddColumnsToAppointment < ActiveRecord::Migration
  def change
  	add_column :appointments, :surname, :string
  	add_column :appointments, :date_of_birth, :date
  	add_column :appointments, :time_of_birth, :time
  	add_column :appointments, :place_of_birth, :string
  	add_column :appointments, :address, :text
  	add_column :appointments, :pay_amount, :string
  end
end

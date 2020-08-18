class AddColumnsToAppointments < ActiveRecord::Migration
  def change
  	add_column :appointments, :job, :boolean
  	add_column :appointments, :caste, :string
  	add_column :appointments, :religion, :string
  	add_column :appointments, :marital_status, :boolean
  	add_column :appointments, :councelling_type, :string
  	add_column :appointments, :payment_type, :string
  	add_column :appointments, :photo, :string
  	add_column :appointments, :gender, :string
  	add_column :appointments, :aadhar, :string
    add_column :appointments, :reference, :string
    add_column :appointments, :date_of_appointment, :date
  	add_column :appointments, :time_of_appointment, :time
  end
end

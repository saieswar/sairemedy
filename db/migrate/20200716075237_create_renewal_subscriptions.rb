class CreateRenewalSubscriptions < ActiveRecord::Migration
  def change
    create_table :renewal_subscriptions do |t|
    	t.integer :user_id
    	t.string :reference_no
    	t.datetime :date_of_appointment
    	t.string :phone
    	t.text :reason
    	t.string :pay
    	t.time :time_of_appointment

      t.timestamps null: false
    end
  end
end

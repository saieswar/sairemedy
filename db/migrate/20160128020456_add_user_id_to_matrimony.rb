class AddUserIdToMatrimony < ActiveRecord::Migration
  def change
    add_reference :matrimonies, :user, index: true, foreign_key: true
  end
end

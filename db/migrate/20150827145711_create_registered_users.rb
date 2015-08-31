class CreateRegisteredUsers < ActiveRecord::Migration
  def change
    create_table :registered_users do |t|
      t.string :username

      t.timestamps
    end
  end
end

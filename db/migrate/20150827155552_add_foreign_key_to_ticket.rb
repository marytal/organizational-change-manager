class AddForeignKeyToTicket < ActiveRecord::Migration
  def up
    add_column :tickets, :registered_user_id, :integer
  end
  def down
    remove_column :tickets, :registered_user_id
  end
end

class AddClosedFieldToTicket < ActiveRecord::Migration
  def up
    add_column :tickets, :closed, :boolean
  end
  def down
    remove_column :tickets, :closed
  end
end

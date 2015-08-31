class AddForeignKeyToContent < ActiveRecord::Migration
  def up
    add_column :contents, :ticket_id, :integer
  end
  def down
    remove_column :contents, :ticket_id
  end
end

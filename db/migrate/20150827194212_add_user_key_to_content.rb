class AddUserKeyToContent < ActiveRecord::Migration
  def up
    add_column :contents, :user_id, :integer
  end
  def down
    remove_column :contents, :user_id
  end
end

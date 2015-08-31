class SetDefaultValueForContent < ActiveRecord::Migration
  def up
    change_column :contents, :suggestion, :boolean, default: false
  end
  def down
    change_column :contents, :suggestion, :boolean, default: nil
  end
end

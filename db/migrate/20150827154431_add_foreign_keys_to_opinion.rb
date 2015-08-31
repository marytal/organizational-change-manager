class AddForeignKeysToOpinion < ActiveRecord::Migration
  def up
    add_column :opinions, :user_id, :integer
    add_column :opinions, :content_id, :integer
  end

  def down
    remove_column :opinions, :user_id
    remove_column :opinions, :content_id
  end
end

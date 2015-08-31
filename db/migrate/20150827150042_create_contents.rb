class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :content
      t.string :status
      t.boolean :suggestion

      t.timestamps
    end
  end
end

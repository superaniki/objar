class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :name
      t.string :imagename
      t.boolean :public
      t.integer :user_id

      t.timestamps
    end
    
    add_index :markers, [:user_id, :created_at]
  end
end

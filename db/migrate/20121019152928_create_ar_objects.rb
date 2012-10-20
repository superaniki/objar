class CreateArObjects < ActiveRecord::Migration
  def change
    create_table :ar_objects do |t|
      t.string :title
      t.string :description
      t.float :pos_x
      t.float :pos_y
      t.float :pos_z
      t.float :size_x
      t.float :size_y
      t.float :size_z
      t.float :rot_x
      t.float :rot_y
      t.float :rot_z
      t.integer :marker_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :ar_objects, :user_id
    add_index :ar_objects, :marker_id
  end
end

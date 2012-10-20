class AddIndexToAr3d < ActiveRecord::Migration
  def change
    add_index :ar_3ds, :ar_object_id
  end
end

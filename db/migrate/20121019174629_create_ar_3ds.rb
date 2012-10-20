class CreateAr3ds < ActiveRecord::Migration
  def change
    create_table :ar_3ds do |t|
      t.integer :ar_object_id
      t.string :geometry
      t.boolean :use_texture
      t.integer :texture_id
      t.boolean :use_shader
      t.string :vertexshader
      t.string :fragmentshader

      t.timestamps
    end
  end
  add_index :ar_3ds, :ar_object_id
end

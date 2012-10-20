class CreateTextures < ActiveRecord::Migration
  def change
    create_table :textures do |t|
      t.string :filename

      t.timestamps
    end
  end
end

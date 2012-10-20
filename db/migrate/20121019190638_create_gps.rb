class CreateGps < ActiveRecord::Migration
  def change
    create_table :gps do |t|
      t.float :latitude
      t.float :longitude
      t.integer :ar_object_id

      t.timestamps
    end
  end
end

class AddPositionDependentToMarker < ActiveRecord::Migration
  def change
    add_column :markers, :position_dependent, :boolean
  end
end

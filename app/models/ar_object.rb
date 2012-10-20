class ArObject < ActiveRecord::Base
  attr_accessible :description, :marker_id, :pos_x, :pos_y, :pos_z, :rot_x, :rot_y, :rot_z, :size_x, :size_y, :size_z, :title, :user_id
  belongs_to :user
  validates :user_id, presence: true

end

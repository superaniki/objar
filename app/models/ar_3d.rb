class Ar3d < ActiveRecord::Base
  attr_accessible :ar_object_id, :fragmentshader, :geometry, :texture_id, :use_shader, :use_texture, :vertexshader
  belongs_to :ar_object
  validates :ar_object_id, presence: true
end

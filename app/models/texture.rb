class Texture < ActiveRecord::Base
  attr_accessible :filename
  belongs_to :ar_3d
  
end

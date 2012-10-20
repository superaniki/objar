class Gps < ActiveRecord::Base
  attr_accessible :ar_object_id, :latitude, :longitude
  belongs_to :ar_object
  validates :ar_object_id, presence: true
end

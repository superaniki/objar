class Marker < ActiveRecord::Base
  attr_accessible :imagename, :name, :public, :user_id
  belongs_to :user
  validates :user_id, presence: true
end

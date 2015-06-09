class Tag < ActiveRecord::Base

validates :tag_name, :presence => true, :uniqueness => true

has_many :trackers
has_many :relationships, through: :trackers

end

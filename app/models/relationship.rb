class Relationship < ActiveRecord::Base

validates :first_name, :presence => true
validates :last_name, :presence => true

has_many :trackers
has_many :tags, through: :trackers

end

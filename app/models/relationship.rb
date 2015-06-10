class Relationship < ActiveRecord::Base

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :user_id, :presence => true

belongs_to :user
has_many :trackers
has_many :tags, through: :trackers

end

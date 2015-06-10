class Tag < ActiveRecord::Base

validates :tag_name, :presence => true, :uniqueness => true
validates :user_id, :presence => true

belongs_to :user
has_many :trackers
has_many :relationships, through: :trackers

end

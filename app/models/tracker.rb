class Tracker < ActiveRecord::Base
validates :tag_id, :presence => true
validates :user_id, :presence => true
validates :relationship_id, :presence => true
validates :user_id, :uniqueness => {:scope => [:relationship_id, :tag_id] }

belongs_to :relationship
belongs_to :tag
belongs_to :user


end

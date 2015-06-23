class Note < ActiveRecord::Base

validates :relationship_id, :presence => true
validates :user_id, :presence => true

belongs_to :relationship
end

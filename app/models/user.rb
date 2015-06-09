class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


validates :user_name, :presence => true, :uniqueness => true

has_many :trackers
has_many :relationships, through: :trackers
has_many :tags, through: :trackers

end

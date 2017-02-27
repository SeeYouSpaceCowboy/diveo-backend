class User < ApplicationRecord
  validates :username, :first_name, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password

  has_many :videos

  has_many :follower_connections, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_connections, source: :follower

  has_many :following_connections, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_connections, source: :following
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name

  has_many :followers, through: :follower_connections, source: :follower

  has_many :following, through: :following_connections, source: :following

  has_many :videos
end

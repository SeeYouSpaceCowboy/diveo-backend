class VideoSerializer < ActiveModel::Serializer
  attributes :title, :url, :likes, :dislikes, :created_at

  belongs_to :user
end

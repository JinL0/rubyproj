class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :users_liked, through: :likes, source: :user
  has_many :dislikes
  has_many :users_disliked, through: :dislikes, source: :user
  has_many :comments
  has_many :users_commented, through: :comments, source: :user
  has_one_attached :photo
end
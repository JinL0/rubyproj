class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :likes
  has_many :posts_liked, through: :likes, foreign_key: :post_id, class_name: "Photo"
  has_many :dislikes
  has_many :posts_disliked, through: :dislikes, foreign_key: :post_id, class_name: "Photo"
  has_many :comments
  has_many :posts_commentd, through: :comments, foreign_key: :post_id, class_name: "Photo"
end
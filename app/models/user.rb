class User < ApplicationRecord

  has_many :tweets
  has_many :notifications

  validates :email, :name, :username, :bio, presence: true

end

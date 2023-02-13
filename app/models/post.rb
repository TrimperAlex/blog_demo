class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validates :body, presence: true, length: {maximum: 1000}
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
end

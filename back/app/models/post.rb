class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true
end

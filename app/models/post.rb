class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :content, presence: true, unless: :image?
  validates :image, presence: true

  mount_uploader :image, ImageUploader
  # mount_uploader :image, VideoUploader
end

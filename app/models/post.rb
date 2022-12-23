class Post < ApplicationRecord
  before_save do
    self.remote_image_url = 'http://placehold.it/100x100'
  end

  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end

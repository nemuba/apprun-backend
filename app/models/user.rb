class User < ApplicationRecord
  mount_base64_uploader :photo, PhotoUploader
  has_secure_password
  validates :email, presence: true
end

class Laboratory < ActiveRecord::Base
  belongs_to :department
  has_many :users
  mount_uploader :avatar, ImageUploader
end

class Laboratory < ActiveRecord::Base
  belongs_to :department
  has_many :users
  mount_uploader :avatar, ImageUploader
  validates_presence_of :name, :department, :professor_name
end

class Resource < ActiveRecord::Base
  belongs_to :user
  mount_uploader :file, BooklistUploader
  has_many :resource_comments
end

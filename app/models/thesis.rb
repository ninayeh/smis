class Thesis < ActiveRecord::Base
  belongs_to :user
  mount_uploader :book_list, BooklistUploader
  mount_uploader :slide, BooklistUploader

  validates_presence_of :title
end

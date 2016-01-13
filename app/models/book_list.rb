class BookList < ActiveRecord::Base
  mount_uploader :file, BooklistUploader
end

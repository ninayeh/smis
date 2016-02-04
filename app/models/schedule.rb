class Schedule < ActiveRecord::Base
  has_many :missions
  belongs_to :user
end

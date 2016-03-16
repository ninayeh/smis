class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  scope :is_this_user,  -> { where(schedules: {user_id: params[:id]}) }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :schedules
  has_many :notes
  has_many :theses
  belongs_to :department
  belongs_to :laboratory
  has_many :resources
  # has_one  :primary_theses, -> { where(published: true) }, :class_name => "Thesis"
end

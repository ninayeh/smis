class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  scope :is_this_user,  -> { where(schedules: {user_id: params[:id]}) }
  # scope :count_user_notes, -> { select("users.*, COUNT(notes.id) as note_count",0).joins(:notes).group("users.id").order("note_count DESC") }
  scope :count_user_notes, -> { select("users.*, COUNT(notes.user_id) as note_count").joins("LEFT JOIN notes ON users.id = notes.user_id").group("users.id").order("note_count DESC")}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :department, :name
  paginates_per 10

  has_many :schedules
  has_many :notes
  has_many :theses
  belongs_to :department
  belongs_to :laboratory
  has_many :resources
  # has_one  :primary_theses, -> { where(published: true) }, :class_name => "Thesis"
end

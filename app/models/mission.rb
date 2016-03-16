class Mission < ActiveRecord::Base
  belongs_to :schedule

  scope :now_mission, -> { where("DATE(?) BETWEEN start_date AND end_date", Date.today) }
end

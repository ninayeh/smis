module UsersHelper
  def options_for_department
    i = 0
    t('department').map do |l|
      i = i + 1
      [l, i]
    end
  end
end

module UsersHelper
  def options_for_department
    i = 0
    t('department').map do |l|
      i = i + 1
      [l, i]
    end
  end

  def need_updated_lab(current_user)
    if current_user.laboratory_id?
      current_user.laboratory.name
    else
      link_to '<i class="fa fa-info-circle"></i> 尚未填寫'.html_safe, edit_user_registration_path
    end

  end
end

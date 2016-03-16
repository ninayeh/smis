module MissionsHelper

  def check_mission(resource)
    if resource == true
      '<span class="badge bg-info"><i class=" fa fa-check"></i></span>'.html_safe
    else
      # '<span class="badge bg-important"><i class=" fa fa-times "></i></span>'.html_safe
      '未完成'.html_safe
    end
  end

end

module Backend::UsersHelper
    def lab(current_object)
    if current_object.laboratory_id?
      current_object.laboratory.name
    else
      '尚未填寫'.html_safe
    end

  end
end

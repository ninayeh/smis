module NotesHelper
  def sanitize_content(resource)
    resource.html_safe
  end

  def check_final_content(resource)
    if resource.present?
      '<span class="badge bg-info"><i class=" fa fa-check"></i></span>'.html_safe
    else
      '<span class="badge bg-important"><i class=" fa fa-times "></i></span>'.html_safe
    end
  end

  def check_published(resource)
    if resource.published
      '已發布'.html_safe
    else
      '未發布'.html_safe
    end
  end
end

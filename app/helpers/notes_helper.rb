module NotesHelper
  def sanitize_content(resource)
    resource.html_safe
  end
end

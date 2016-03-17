module ResourcesHelper
  def link_to_file(current_object)
    if current_object.file?
      link_to '<i class="fa fa-download"></i> 相關資源下載'.html_safe, current_object.file_url,
      target:"_blank",class: 'btn-download', title:'下載[另開新視窗]'
    else
      raw "<span></span>"
    end
  end

  def open_link(current_object)
    if current_object.url?
      link_to "#{current_object.url}".html_safe, "#{current_object.url}", target:"_blank",class: 'btn-download', title:'[另開新視窗]'
    else
      raw "<span></span>"
    end
  end

  def resize_content(resource)
    resource.truncate(20).html_safe
  end
end

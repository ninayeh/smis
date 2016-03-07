module Backend::ResouecesHelper
  def link_to_file(current_object)
    if current_object.file?
      link_to '<i class="fa fa-download"></i> 下載'.html_safe, current_object.file_url,
      target:"_blank",class: 'btn-download', title:'下載[另開新視窗]'
    else
      raw "<span></span>"
    end
  end
end

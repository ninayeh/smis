module ThesesHelper
  def link_to_book_list(current_object)
    if current_object.book_list?
      link_to '<i class="fa fa-download"></i> 書單下載'.html_safe, current_object.book_list_url,
      target:"_blank",class: 'btn-download', title:'書單下載[另開新視窗]'
    else
      raw "<span></span>"
    end
  end

  def link_to_slide(current_object)
    if current_object.slide?
      link_to '<i class="fa fa-download"></i> 投影片下載'.html_safe, current_object.slide_url,
      target:"_blank",class: 'btn-download', title:'投影片下載[另開新視窗]'
    else
      raw "<span></span>"
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

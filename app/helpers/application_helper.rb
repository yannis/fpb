module ApplicationHelper
  def title(page_title)
    page_title = Sanitize.clean(page_title)
    content_for(:title){page_title}
  end
end
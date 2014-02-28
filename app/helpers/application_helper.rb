module ApplicationHelper

  # Generates full title for current page
  def full_title(page_title)
    base_title = "Rails Gone Awry"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

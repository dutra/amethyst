module ApplicationHelper

  # Return a link with correct active section
  def header_link_to(section)
    case section
    when 'albums'
      if controller_name == "albums"
        link_to "Photography", albums_path, class: "active"
      else 
        link_to "Photography", albums_path
      end
    when 'hobbies'
      if controller_name == "static_pages" and action_name == "hobbies"
        link_to "Hobbies", '/hobbies', class: "active"
      else 
        link_to "Hobbies", '/hobbies'
      end
    end
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "dutra"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
end

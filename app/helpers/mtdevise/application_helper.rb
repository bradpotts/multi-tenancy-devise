module Mtdevise
  module ApplicationHelper
  
    # Helper for Page Title
    def phc_title(phc_page_title)
      content_for :phc_title, phc_page_title.to_s
    end
    
    # Helper for Page Title Tag
    def phc_title_tagline(phc_page_title_tagline)
      content_for :phc_title_tagline, phc_page_title_tagline.to_s
    end
    
    # Bootstrap Notification System
    def flash_class(level)
      case level.to_sym
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-danger"
        when :alert then "alert alert-warning"
      end
    end
    
  end
end
module Subengine
	module ApplicationHelper

    # Bootstrap Notification System
    def bootstrap_class_for(flash_type)
      case flash_type
      when :success
        "alert-success alert-dismissible"
      when :error
        "alert-error alert-dismissible"
      when :alert
        "alert-block alert-dismissible"
      when :notice
        "alert-info alert-dismissible"
      else
        flash_type.to_s
      end
    end

	end
end
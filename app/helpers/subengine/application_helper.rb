module Subengine
	module ApplicationHelper

		# Bootstrap Notification System
		def bootstrap_class_for(flash_type)
			case flash_type
				when :notice then "alert alert-info"
				when :success then "alert alert-success"
				when :error then "alert alert-danger"
				when :alert then "alert alert-warning"
			else
				flash_type.to_s
			end
		end

	end
end
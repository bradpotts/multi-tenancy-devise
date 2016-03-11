module Mtdevise
	module ApplicationHelper

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

module Mtdevise
	module UserStorage

	extend ActiveSupport::Concern

	included do
		self.table_name = "mtdevise_users"
	end

	end
end
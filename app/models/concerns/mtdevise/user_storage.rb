module Mtdevise
  module UserStorage
  
    # Extend Additional Account Support
    extend ActiveSupport::Concern
    
    # Find User Table
    included do
    self.table_name = "mtdevise_users"
    end
  
  end
end

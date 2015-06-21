module subengine
  module UserStorage

    extend ActiveSupport::Concern

    included do
      self.table_name = "subengine_users"
    end

  end
end
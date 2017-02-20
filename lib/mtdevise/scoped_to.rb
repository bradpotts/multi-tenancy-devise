module Mtdevise
  module ScopedTo
    def scoped_to(account)
      where(:account_id => account.id)
    end
  end
end

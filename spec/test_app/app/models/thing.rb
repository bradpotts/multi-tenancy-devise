class Thing < ActiveRecord::Base
  def self.scoped_to(account)
    where(:account_id => account.id)
  end
end

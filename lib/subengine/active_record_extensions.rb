ActiveRecord::Base.class_eval do
  def self.scoped_to_account
    belongs_to :account, :class_name => "subengine::Account"
    association_name = self.to_s.downcase.pluralize
    subengine::Account.has_many association_name.to_sym, :class_name => self.to_s

    instance_eval <<-HERE
      def scoped_to(account)
        where(:account_id => account.id)
      end
    HERE

  end
end

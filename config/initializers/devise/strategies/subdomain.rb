require 'devise/strategies/authenticatable'
 
module Devise
  module Strategies
    class SubdomainLogin < Authenticatable
      def subdomain
        request.subdomain
      end

      def valid?
        subdomain.present? && params["user"]
      end

      def authenticate!
        return fail!('Invalid email or password.') unless account = Subscribem::Account.find_by(subdomain: subdomain)
        return fail!('Invalid email or password.') unless user = account.users.find_by(email: params["user"]["email"])
        return fail!('Invalid email or password.') unless user.valid_password?(params["user"]["password"])
        success! user
      end 
    end 
  end 
end
 
Warden::Strategies.add(:subdomain_login, Devise::Strategies::SubdomainLogin)

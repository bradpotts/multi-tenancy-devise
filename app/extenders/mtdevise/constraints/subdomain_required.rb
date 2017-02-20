module Mtdevise
  module Constraints
    class SubdomainRequired
    
      # Subdomain Matching
      def self.matches?(request)
        request.subdomain.present? && request.subdomain != "www" && request.subdomain != ENV['DEPLOYED_DOMAIN']
      end
    
    end
  end
end

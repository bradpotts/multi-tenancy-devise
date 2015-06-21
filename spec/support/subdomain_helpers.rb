module SubdomainHelpers
  def within_account_subdomain
    let(:subdomain_url) { "http://#{account.subdomain}.example.com" }
    before { Capybara.default_host = subdomain_url } 
    after { Capybara.default_host = "http://example.com" }
    yield
  end
end

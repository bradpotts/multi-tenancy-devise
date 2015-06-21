require "spec_helper"
feature "Account scoping" do
  let!(:account_a) { FactoryGirl.create(:account) }
  let!(:account_b) { FactoryGirl.create(:account) }
  before do
    Thing.scoped_to(account_a).create(:name => "Account A's Thing")
    Thing.scoped_to(account_b).create(:name => "Account B's Thing")
  end
  scenario "displays only account A's records" do
    sign_in(account_a.owner, attributes_for(:user)[:password])
    visit main_app.things_url(:subdomain => account_a.subdomain)
    expect(page).to have_content("Account A's Thing")
    expect(page).to_not have_content("Account B's Thing")
  end
  scenario "displays only account B's records" do
    sign_in(account_b.owner, attributes_for(:user)[:password])
    visit main_app.things_url(:subdomain => account_b.subdomain)
    expect(page).to have_content("Account B's Thing")
    expect(page).to_not have_content("Account A's Thing")
  end
end

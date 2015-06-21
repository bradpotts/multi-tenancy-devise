require "spec_helper"

feature 'Accounts creation' do
  before(:each) do
    @account = create :account
    sign_in @account.owner, attributes_for(:user)[:password]
    click_on 'Create a new Account'
    expect(page).to have_text 'Create Account'
  end
  scenario 'creating an account' do
    fill_in 'Name', :with => 'Test'
    fill_in "Subdomain", :with => "test"
    click_button 'Create Account'
    expect(page).to have_text('Your account has been successfully created.')
  end
  scenario "Ensure subdomain uniqueness" do
    fill_in 'Name', :with => 'Test'
    fill_in "Subdomain", :with => @account.subdomain
    click_button 'Create Account'
    expect(page).to have_text("Sorry, your account could not be created.")
    expect(page).to have_text("has already been taken")
  end
  scenario "Subdomain with restricted name" do
    fill_in 'Name', :with => 'Test'
    fill_in "Subdomain", :with => "admin"
    click_button 'Create Account'
    expect(page).to have_text("Sorry, your account could not be created.")
    expect(page).to have_text("is not allowed. Please choose another subdomain.")
  end
  scenario "Subdomain with invalid name" do
    fill_in 'Name', :with => 'Test'
    fill_in "Subdomain", :with => "<admin>"
    click_button 'Create Account'
    expect(page).to have_text("Sorry, your account could not be created.")
    expect(page).to have_text("is not allowed. Please choose another subdomain.")
  end
end

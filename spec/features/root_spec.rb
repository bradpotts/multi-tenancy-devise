require "spec_helper"

feature 'Root page' do
  context 'signed in users' do
    scenario 'Should redirect to the accounts page' do
      sign_in
      visit subengine.root_path
      expect(page.current_url).to match(/#{subengine.accounts_path}/)
    end
  end
  context 'guest users' do
    scenario 'Should have sign up link' do
      visit subengine.root_path
      click_link 'Sign Up Today'
    end
    scenario 'Should have login link' do
      visit subengine.root_path
      click_link 'Sign In To Manage Your Accounts'
    end
  end
end

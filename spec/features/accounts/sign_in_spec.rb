require "spec_helper"

feature 'Sign In' do
  context 'valid in users' do
    scenario 'after sign in it should redirect to accounts page' do
      account = create :account
      sign_in account.owner, attributes_for(:user)[:password]
      expect(page.current_url).to match(/#{subengine.accounts_path}/)
    end
  end
  context 'invalid users' do
    scenario 'should not let them in'  do
      account = create :account
      sign_in account.owner, 'invalid pwd'
      expect(page).to have_text('Invalid')
      expect(page).not_to have_text(account.name)
    end
  end
end

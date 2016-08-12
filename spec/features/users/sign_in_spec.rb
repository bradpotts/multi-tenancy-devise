require "spec_helper"

feature "User sign in" do
	
	extend SubdomainHelpers
	let!(:account) { FactoryGirl.create(:account) }
	let(:sign_in_url) { "http://#{account.subdomain}.example.com/sign_in" }
	let(:root_url) { "http://#{account.subdomain}.example.com/" }
	within_account_subdomain do

		scenario "signs in as an account owner successfully" do
			visit root_url
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
			fill_in "user_email", :with => account.owner.email
			fill_in "user_password", :with => "password"
			click_button "Sign-In"
			expect(page).to have_content("Signed in as #{account.owner.email}")
			expect(page.current_url).to eq(mtdevise.root_url(subdomain: account.subdomain))
		end

		scenario "attempts sign in with an invalid password and fails" do
			visit root_url
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
			fill_in "user_email", :with => account.owner.email
			fill_in "user_password", :with => "invalidpwd"
			click_button "Sign-In"
			expect(page).to have_content("Invalid email or password.")
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
		end
		
		scenario "attempts sign in with an invalid email address and fails" do
			visit root_url
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
			fill_in "user_email", :with => "foo@example.com"
			fill_in "user_password", :with => "password"
			click_button "Sign-In"
			expect(page).to have_content("Invalid email or password.")
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
		end
		
		scenario "cannot sign in if not a part of this subdomain" do
			other_account = FactoryGirl.create(:account)
			visit mtdevise.root_url(:subdomain => account.subdomain)
			fill_in "user_email", :with => other_account.owner.email
			fill_in "user_password", :with => "password"
			click_button "Sign-In"
			expect(page).to have_content("Invalid email or password.")
			expect(page.current_url).to eq(mtdevise.new_user_session_url(subdomain: account.subdomain))
		end
	
	end
end
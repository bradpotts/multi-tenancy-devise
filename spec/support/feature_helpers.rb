module Features

	module SessionHelpers
		def sign_in(user = nil, pwd = nil)
			default_pwd = 'Passw0rd'
			visitor = user || create( :user, email: 'orbanbotond@gmail.com', password: default_pwd, password_confirmation: default_pwd)
			password = pwd || default_pwd
			visit mtdevise.new_user_session_path
			fill_in "user_email", with: visitor.email
			fill_in 'user_password', with: password
			click_on 'Sign-In'
		end

		def logout
			click_on 'settings_dropdown'
			sleep(2)
			click_on 'Logout'
		end

	end
end

RSpec.configure do |config|
	config.include Features::SessionHelpers, type: :feature
end

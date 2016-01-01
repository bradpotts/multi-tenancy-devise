require 'spec_helper'

describe Mtdevise::Account do

	it "can be created with an owner" do
		params = {
			:name => "Test Account",
			:firstname => "Test",
			:lastname => "Test",
			:username => "test",
			:subdomain => "test",
			:owner_attributes => {
			:email => "user@example.com",
			:password => "password",
			:password_confirmation => "password"
			}
		}
		account = Mtdevise::Account.create_with_owner(params)
		users = account.users
		expect(account).to be_persisted
		expect(users.first).to eq(account.owner)

	end
end
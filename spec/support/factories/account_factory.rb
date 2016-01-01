FactoryGirl.define do
	factory :account, :class => Mtdevise::Account do
		sequence(:name) { |n| "Test Account ##{n}" }
		sequence(:firstname) { |n| "Test#{n}" }
		sequence(:lastname) { |n| "Test#{n}" }
		sequence(:username) { |n| "test#{n}" }
		sequence(:subdomain) { |n| "test#{n}" }
		association :owner, :factory => :user
		after(:create) do |account|
			account.users << account.owner
		end
	end
end
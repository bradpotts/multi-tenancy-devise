FactoryGirl.define do
  factory :user, :class => subengine::User do
    sequence(:email) { |n| "test#{n}@example.com" }
    password "password"
    password_confirmation { |u| u.password }
    confirmed_at {Time.now}
  end
end

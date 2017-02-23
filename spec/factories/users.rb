FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email_#{n}@suse.com" }
    password         "123456789"
  end
end

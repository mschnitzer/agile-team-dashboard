FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "chopsticks_#{n}@suse.com" }
    password         '123123123'
    github_login     'github'
    birthday         '1980-06-28'
    name             'Kove'
    surname          'Martin'
    location         'New York'

    factory :miyagi do
      password         'miyagi_sensei'
      github_login     'miyagi'
      birthday         '1932-06-28'
      name             'Pat'
      surname          'Morita'
      location         'California'
    end

    factory :daniel do
      password         'daniel_san'
      github_login     'daniel'
      birthday         '1961-10-04'
      name             'Ralph'
      surname          'Macchio'
      location         'Long Island'
    end
  end
end

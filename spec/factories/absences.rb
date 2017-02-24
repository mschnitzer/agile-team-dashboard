FactoryGirl.define do
  factory :absence do
    user
    description "MyText"

    factory :vacation do
      event_type 'vacation'
      start_date Date.today
      end_date Date.today + 7.days
    end
    factory :sick do
      event_type 'sick'
      start_date Date.today
      end_date Date.tomorrow
    end
  end
end

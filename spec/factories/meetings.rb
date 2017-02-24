FactoryGirl.define do
  factory :meeting do
    start_date "2017-02-21"
    end_date "2017-02-21"

    factory :standup do
      event_type 'standup'
      location 'mumble'
      name 'awesome standup'
    end
    factory :planning do
      event_type 'planning'
      location 'gotomeeting'
      name 'awesome planning'
    end
    factory :retrospective do
      event_type 'retrospective'
      location 'gotomeeting'
      name 'awesome retrospective'
    end
    factory :workshop do
      event_type 'workshop'
      location 'Nuremberg'
      name 'awesome workshop'
    end
    factory :other do
      event_type 'other'
      location 'Praga'
      name 'awesome Conference'
    end
  end
end

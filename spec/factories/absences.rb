FactoryGirl.define do
  factory :absence do
    user_id 1
    start_date "2017-02-21"
    end_date "2017-02-21"
    description "MyText"
    absence_kind "MyString"
  end
end

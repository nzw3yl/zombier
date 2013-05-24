# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    current_start "2013-05-21"
    current_close "2013-05-21"
    type_id 1
    customer_id 1
    value 1
    cost 1
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phase do
    title "MyString"
    start "2013-05-24"
    close "2013-05-24"
    project_id 1
    milestone false
    value 1
    cost 1
    project
  end
end

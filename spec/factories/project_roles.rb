# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_role do
    name "MyString"
    organization_id 1
    active false
  end
end

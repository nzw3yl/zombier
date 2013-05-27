# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :allocation do
    user_id 1
    phase_id 1
    project_role_id 1
    visible false
    percent 1
  end
end

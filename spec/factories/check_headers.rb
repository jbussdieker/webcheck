# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :check_header do
    check_id 1
    name "MyString"
    value "MyString"
  end
end

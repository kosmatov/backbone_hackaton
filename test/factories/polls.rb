# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poll do
    name "MyString"
    ignore do
      items_count 3
    end

    after :create do |poll, evaluator|
      create_list :poll_item, evaluator.items_count, poll: poll
    end
  end
end

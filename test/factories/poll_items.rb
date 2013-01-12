# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :poll_item, :class => 'Poll::Item' do
    name "MyString"
    votes_count 0
  end
end

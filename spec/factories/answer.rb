FactoryBot.define do
 factory :answer do
  counseling
  user
  content {Faker::Lorem.characters(number:20)}
 end
end
FactoryBot.define do
  factory :counseling do
   user
   genre 
   title {Faker::Lorem.characters(number:5)}
   content {Faker::Lorem.characters(number:20)}
   level {2}
  end
end
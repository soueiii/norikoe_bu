FactoryBot.define do
 factory :user do
  email {Faker::Internet.free_email}
  password {Faker::Internet.password(min_length: 6)}
  password_confirmation {password}
  club {Faker::Lorem.characters(number:5)}
  name {Faker::Lorem.characters(number:5)}
  self_introduction {Faker::Lorem.characters(number:5)}
 end
end
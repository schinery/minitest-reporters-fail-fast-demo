FactoryBot.define do
  factory :user do
    created_at { DateTime.now.to_s }
    email      { Faker::Internet.email }
    id         { SecureRandom.uuid }
    name       { Faker::Name.name }
    password   { Faker::Internet.password }
    updated_at { DateTime.now.to_s }
  end
end

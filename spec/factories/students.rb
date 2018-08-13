# frozen_string_literal: true

FactoryBot.define do
  factory :student do
    first_name { Faker::Name.unique.first_name }
    last_name { Faker::Name.unique.last_name }
    birthdate { Faker::Date.unique.birthday }
  end
end

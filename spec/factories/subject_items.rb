# frozen_string_literal: true

FactoryBot.define do
  factory :subject_item do
    title { Faker::Name.title }
  end
end

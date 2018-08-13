# frozen_string_literal: true

FactoryBot.define do
  factory :participation do
    student
    subject_item
  end
end

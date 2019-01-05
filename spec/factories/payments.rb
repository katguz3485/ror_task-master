# frozen_string_literal: true

FactoryBot.define do
  factory :payment do
    sum { '9.99' }
    date { '2018-08-12' }
    tuition_fee { 'June 2012' }
  end
end

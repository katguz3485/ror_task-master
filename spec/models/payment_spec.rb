# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Payment, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :sum }
    it { is_expected.to validate_presence_of :date }
    it { is_expected.to validate_presence_of :student }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :student_id }
    it { is_expected.to have_db_column :sum }
    it { is_expected.to have_db_column :tuition_fee }
    it { is_expected.to have_db_column :date }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:student) }
    # it { is_expected_to.belong_to(:student).optional }
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SubjectItemNote, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :student_id }
    it { is_expected.to validate_presence_of :subject_item_id }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :student_id }
    it { is_expected.to have_db_column :subject_item_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :student }
    it { is_expected.to belong_to :subject_item }
  end
end

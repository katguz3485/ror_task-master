# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Participation, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :student }
    it { is_expected.to validate_presence_of :subject_item }

    context 'uniqueness of the student-subject_item pair' do
      let!(:participation) { create :participation }
      subject { build :participation, participation.attributes }

      it { is_expected.to_not be_valid }
    end
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :student_id }
    it { is_expected.to have_db_column :subject_item_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :subject_item }
    it { is_expected.to belong_to :student }
  end
end

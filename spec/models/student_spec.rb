require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
  end

  describe 'database columns' do
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :birthdate }
  end

  describe 'associations' do
    it { is_expected.to have_many :subject_items }
    it { is_expected.to have_many :subject_item_notes }
    it { is_expected.to have_many :participations }
  end

  describe 'nested attributes' do
    it { is_expected.to accept_nested_attributes_for :subject_items }
  end
end

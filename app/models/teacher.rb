# frozen_string_literal: true

class Teacher < ApplicationRecord
  TITLES = %w[Dr. Prof. TA].freeze
  has_many :subject_items, dependent: :delete_all

  validates :first_name, :last_name, presence: true
  validates :academic_title, inclusion: {in: TITLES}, presence: true

  accepts_nested_attributes_for :subject_items
end

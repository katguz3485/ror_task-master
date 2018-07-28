# frozen_string_literal: true

class Student < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :subject_item_notes, dependent: :destroy
  has_many :subject_items, dependent: :destroy, through: :participations
  has_many :payments, dependent: :destroy

  validates :first_name, :last_name, presence: true
  accepts_nested_attributes_for :subject_items
end

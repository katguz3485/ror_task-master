# frozen_string_literal: true

class SubjectItem < ApplicationRecord
  has_many :participations, dependent: :delete_all
  has_many :students, through: :participations
  has_many :subject_item_notes, dependent: :delete_all
  belongs_to :teacher
  belongs_to :student, optional: true


  validates :title, presence: true

  scope :not_assigned_or_assigned_to_teacher, ->(teacher) { where('teacher_id IS ? or teacher_id = ?', nil, teacher) }
end

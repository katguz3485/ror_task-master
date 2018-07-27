class SubjectItemNote < ApplicationRecord

  belongs_to :student, optional: true
  belongs_to :subject_item


  validates :student_id, :subject_item_id, presence: true

  scope :for_subject_item, -> (subject_item) { where(subject_item: subject_item) }
end

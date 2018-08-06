class SubjectItemNoteDecorator < Draper::Decorator
  delegate_all

  def student_full_name
    student.present? ? "#{student.decorate.full_name}" : '-'
  end

  def subject_item_title
    subject_item.present? ? "#{subject_item.title}" : '-'
  end
end

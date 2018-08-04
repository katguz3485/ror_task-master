# frozen_string_literal: true

class SubjectItemDecorator < BaseDecorator

  def title_with_assigned_teacher
    teacher.present? ? "#{title} (#{teacher.decorate.full_name})" : title
  end

  def teacher_full_name
    teacher.present? ? (teacher.decorate.full_name).to_s : '-'
  end

end

# frozen_string_literal: true

crumb :root do
  link 'RoR Workshops', root_path
end

crumb :students do
  link t('navbar.students'), students_path
end

crumb :student do |student|
  link "#{student.first_name} #{student.last_name}", student_path(student)
  parent :students
end

crumb :student_subjects do |student|
  link "#{student.first_name} #{student.last_name} #{t('shared.subjects')}", student_subjects_path(student)
  parent :students
end

crumb :teachers do
  link t('navbar.teachers'), teachers_path
end

crumb :teacher do |teacher|
  link "#{teacher.academic_title} #{teacher.first_name} #{teacher.last_name}", teacher_path(teacher)
  parent :teachers
end

crumb :subject_item do
  link t('navbar.subject_item'), subject_items
end

crumb :subject_item do |subject_item|
  link subject_item.title.to_s, subject_item_path
  parent :subject_items
end

crumb :teacher_subjects do |teacher|
  link "#{teacher.first_name} #{teacher.last_name} #{t('shared.subjects')}", teacher_subjects_path(teacher)
  parent :teachers
end

crumb :subjects do
  link t('navbar.reports_subjects'), report_subjects_path
end

crumb :payments do
  link t('navbar.payments'), payments_path
end

crumb :payment do |payment|
  link "#{payment.student.decorate.full_name} date: #{payment.date} sum: #{payment.decorate.sum_to_euro}", payments_path(payment)
end

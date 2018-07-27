require 'faker'
puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)

User.create!(email: 'admin@admin.com', password: 'adminadmin')

def faked_date
  Faker::Date.backward
end

3.times do
  Teacher.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
5.times do
  SubjectItem.create!(
      title: Faker::Lorem.sentence,
      teacher: teachers.sample
  )
end

25.times do
  Student.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      birthdate: Faker::Date.birthday
  )
end


5.times do
  Payment.create!(
      student: Student.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          birthdate: Faker::Date.birthday
      ),
      date: faked_date,
      sum: Faker::Number.decimal(2),
      tuition_fee: faked_date.strftime('%B %Y')
  )


  students = Student.all
  SubjectItem.all.each do |subject_item|
    subject_item.students << students.sample(rand(1..4))
  end

  SubjectItem.all.each do |subject_item|
    subject_item.students.each do |student|
      rand(1..5).times do
        subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                  subject_item: subject_item,
                                                                  value: rand(1..6))
      end
    end
  end

  puts "Seeds: done"
end
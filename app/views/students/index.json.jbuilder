# frozen_string_literal: true

json.array!(@students) do |student|
  json.extract! student, :id
  json.url student_url(student, format: :json)
end

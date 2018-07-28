# frozen_string_literal: true

json.array!(@subject_items) do |subject_item|
  json.extract! subject_item, :id, :teacher_id
  json.url subject_item_url(subject_item, format: :json)
end

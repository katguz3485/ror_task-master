json.array!(@subject_item_notes) do |subject_item_note|
  json.extract! subject_item_note, :id, :student_id, :subject_item_id
  json.url subject_item_note_url(subject_item_note, format: :json)
end

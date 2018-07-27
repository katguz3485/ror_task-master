class AddSubjectItemToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_reference :participations, :subject_item, index: true, foreign_key: true
  end
end

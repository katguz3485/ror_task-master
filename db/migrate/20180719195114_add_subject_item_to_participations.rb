class AddSubjectItemToParticipations < ActiveRecord::Migration
  def change
    add_reference :participations, :subject_item, index: true, foreign_key: true
  end
end

class CreateSubjectItemNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_item_notes do |t|
      t.references :student, index: true, foreign_key: true
      t.references :subject_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

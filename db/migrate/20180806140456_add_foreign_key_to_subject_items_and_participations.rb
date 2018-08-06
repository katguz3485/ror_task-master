class AddForeignKeyToSubjectItemsAndParticipations < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :participations,:subject_items
    add_foreign_key :participations, :subject_items, on_delete: :cascade

  end
end

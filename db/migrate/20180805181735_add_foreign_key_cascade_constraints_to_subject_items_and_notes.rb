# frozen_string_literal: true

class AddForeignKeyCascadeConstraintsToSubjectItemsAndNotes < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :subject_item_notes, :subject_items

    add_foreign_key :subject_item_notes, :subject_items, on_delete: :cascade
  end
end

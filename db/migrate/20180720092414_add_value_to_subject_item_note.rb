# frozen_string_literal: true

class AddValueToSubjectItemNote < ActiveRecord::Migration[5.2]
  def change
    add_column :subject_item_notes, :value, :integer
  end
end

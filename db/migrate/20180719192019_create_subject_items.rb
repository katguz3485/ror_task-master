# frozen_string_literal: true

class CreateSubjectItems < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_items do |t|
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

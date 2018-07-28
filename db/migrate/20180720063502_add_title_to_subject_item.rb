# frozen_string_literal: true

class AddTitleToSubjectItem < ActiveRecord::Migration[5.2]
  def change
    add_column :subject_items, :title, :string
  end
end

# frozen_string_literal: true

class AddColumnsToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :academic_title, :string
  end
end

class AddColumnsToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :academic_title, :string
  end
end

class AddColumnsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :birthdate, :date
  end
end

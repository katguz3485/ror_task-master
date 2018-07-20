class AddTitleToSubjectItem < ActiveRecord::Migration
  def change
    add_column :subject_items, :title, :string
  end
end

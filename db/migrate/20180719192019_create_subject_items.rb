class CreateSubjectItems < ActiveRecord::Migration
  def change
    create_table :subject_items do |t|
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

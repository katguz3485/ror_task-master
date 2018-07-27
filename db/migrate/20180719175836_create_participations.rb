class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

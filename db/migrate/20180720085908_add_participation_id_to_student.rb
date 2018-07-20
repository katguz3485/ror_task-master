class AddParticipationIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :participation_id, :integer
  end
end

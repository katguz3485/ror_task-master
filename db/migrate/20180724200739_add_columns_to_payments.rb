class AddColumnsToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :sum, :decimal
    add_column :payments, :tuition_fee, :datetime
  end
end

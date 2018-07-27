class AddColumnsToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :sum, :decimal
    add_column :payments, :tuition_fee, :datetime
  end
end

# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

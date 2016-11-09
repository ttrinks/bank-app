class CreateBankaccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bankaccounts do |t|
      t.integer :account_type
      t.decimal :balance

      t.timestamps
    end
  end
end

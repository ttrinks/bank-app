class CreateBankaccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bankaccounts do |t|
      t.integer :client_id
      t.integer :bank_id
      t.integer :account_type
      t.decimal :balance

      t.timestamps
    end
  end
end

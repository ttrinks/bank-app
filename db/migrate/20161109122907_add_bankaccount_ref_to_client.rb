class AddBankaccountRefToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :bankaccounts, :client, foreign_key: true
  end
end

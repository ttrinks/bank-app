class AddBanksRefToBankaccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :bankaccounts, :banks, foreign_key: true
  end
end

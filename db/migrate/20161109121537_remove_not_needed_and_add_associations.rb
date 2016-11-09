class RemoveNotNeededAndAddAssociations < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :bankaccounts, :client_id
    remove_column :bankaccounts, :bank_id
  end
end

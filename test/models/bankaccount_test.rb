require 'test_helper'
require 'date'

class BankaccountTest < ActiveSupport::TestCase
  setup do
    @bankaccount = bankaccounts(:Bankaccountone)
    @bankaccount2 = bankaccounts(:Bankaccounttwo)
  end

  test "make sure association works here" do
    assert_equal 'Max Muster', @bankaccount.client.name
    assert_equal Date.parse('2015-11-09'), @bankaccount2.client.brith
    #assert_equal String.new('Max Muster'), @habit.last_log_date
  end
end

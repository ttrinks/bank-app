require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  setup do
    @client = clients(:Clientone)
    @client2 = clients(:Clienttwo)
  end

  test "make sure association works here" do
    assert_equal @client.bankaccounts.where(:id => 1).first, @bankaccount
    #assert_equal String.new('Max Muster'), @habit.last_log_date
  end
end

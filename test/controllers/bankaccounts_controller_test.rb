require 'test_helper'

class BankaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bankaccount = bankaccounts(:Bankaccountone)
    login_as(users(:one))
  end

  test "should get index" do
    get bankaccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_bankaccount_url
    assert_response :success
  end

  test "should create bankaccount" do
    @bankaccountCount = Bankaccount.count
    Bankaccount.create(account_type: 1, balance: 92.01, banks_id: 1, client_id: 1,)
    assert_equal @bankaccountCount, Bankaccount.count
  end

  test "should show bankaccount" do
    get bankaccount_url(@bankaccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_bankaccount_url(@bankaccount)
    assert_response :success
  end

  test "should update bankaccount" do
    patch bankaccount_url(@bankaccount), params: { bankaccount: { account_type: @bankaccount.account_type, balance: @bankaccount.balance, banks_id: @bankaccount.banks_id, client_id: @bankaccount.client_id } }
    #assert_redirected_to bankaccount_url(@bankaccount)
  end

  test "should destroy bankaccount" do
    assert_difference('Bankaccount.count', -1) do
      delete bankaccount_url(@bankaccount)
    end

    assert_redirected_to bankaccounts_url
  end
end

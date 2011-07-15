require 'test_helper'

class AccountTransactionsControllerTest < ActionController::TestCase
  setup do
    @account_transaction = account_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_transaction" do
    assert_difference('AccountTransaction.count') do
      post :create, :account_transaction => @account_transaction.attributes
    end

    assert_redirected_to account_transaction_path(assigns(:account_transaction))
  end

  test "should show account_transaction" do
    get :show, :id => @account_transaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @account_transaction.to_param
    assert_response :success
  end

  test "should update account_transaction" do
    put :update, :id => @account_transaction.to_param, :account_transaction => @account_transaction.attributes
    assert_redirected_to account_transaction_path(assigns(:account_transaction))
  end

  test "should destroy account_transaction" do
    assert_difference('AccountTransaction.count', -1) do
      delete :destroy, :id => @account_transaction.to_param
    end

    assert_redirected_to account_transactions_path
  end
end

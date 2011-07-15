require 'test_helper'

class BillTransactionsControllerTest < ActionController::TestCase
  setup do
    @bill_transaction = bill_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_transaction" do
    assert_difference('BillTransaction.count') do
      post :create, :bill_transaction => @bill_transaction.attributes
    end

    assert_redirected_to bill_transaction_path(assigns(:bill_transaction))
  end

  test "should show bill_transaction" do
    get :show, :id => @bill_transaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bill_transaction.to_param
    assert_response :success
  end

  test "should update bill_transaction" do
    put :update, :id => @bill_transaction.to_param, :bill_transaction => @bill_transaction.attributes
    assert_redirected_to bill_transaction_path(assigns(:bill_transaction))
  end

  test "should destroy bill_transaction" do
    assert_difference('BillTransaction.count', -1) do
      delete :destroy, :id => @bill_transaction.to_param
    end

    assert_redirected_to bill_transactions_path
  end
end

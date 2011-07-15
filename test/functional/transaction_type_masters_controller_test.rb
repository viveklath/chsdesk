require 'test_helper'

class TransactionTypeMastersControllerTest < ActionController::TestCase
  setup do
    @transaction_type_master = transaction_type_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transaction_type_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction_type_master" do
    assert_difference('TransactionTypeMaster.count') do
      post :create, :transaction_type_master => @transaction_type_master.attributes
    end

    assert_redirected_to transaction_type_master_path(assigns(:transaction_type_master))
  end

  test "should show transaction_type_master" do
    get :show, :id => @transaction_type_master.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @transaction_type_master.to_param
    assert_response :success
  end

  test "should update transaction_type_master" do
    put :update, :id => @transaction_type_master.to_param, :transaction_type_master => @transaction_type_master.attributes
    assert_redirected_to transaction_type_master_path(assigns(:transaction_type_master))
  end

  test "should destroy transaction_type_master" do
    assert_difference('TransactionTypeMaster.count', -1) do
      delete :destroy, :id => @transaction_type_master.to_param
    end

    assert_redirected_to transaction_type_masters_path
  end
end

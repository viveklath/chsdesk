require 'test_helper'

class LedgerDetailsControllerTest < ActionController::TestCase
  setup do
    @ledger_detail = ledger_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ledger_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ledger_detail" do
    assert_difference('LedgerDetail.count') do
      post :create, :ledger_detail => @ledger_detail.attributes
    end

    assert_redirected_to ledger_detail_path(assigns(:ledger_detail))
  end

  test "should show ledger_detail" do
    get :show, :id => @ledger_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ledger_detail.to_param
    assert_response :success
  end

  test "should update ledger_detail" do
    put :update, :id => @ledger_detail.to_param, :ledger_detail => @ledger_detail.attributes
    assert_redirected_to ledger_detail_path(assigns(:ledger_detail))
  end

  test "should destroy ledger_detail" do
    assert_difference('LedgerDetail.count', -1) do
      delete :destroy, :id => @ledger_detail.to_param
    end

    assert_redirected_to ledger_details_path
  end
end

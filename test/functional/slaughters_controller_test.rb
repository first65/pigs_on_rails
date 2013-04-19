require 'test_helper'

class SlaughtersControllerTest < ActionController::TestCase
  setup do
    @slaughter = slaughters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slaughters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slaughter" do
    assert_difference('Slaughter.count') do
      post :create, slaughter: { butcher_id: @slaughter.butcher_id, transport_id: @slaughter.transport_id }
    end

    assert_redirected_to slaughter_path(assigns(:slaughter))
  end

  test "should show slaughter" do
    get :show, id: @slaughter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slaughter
    assert_response :success
  end

  test "should update slaughter" do
    put :update, id: @slaughter, slaughter: { butcher_id: @slaughter.butcher_id, transport_id: @slaughter.transport_id }
    assert_redirected_to slaughter_path(assigns(:slaughter))
  end

  test "should destroy slaughter" do
    assert_difference('Slaughter.count', -1) do
      delete :destroy, id: @slaughter
    end

    assert_redirected_to slaughters_path
  end
end

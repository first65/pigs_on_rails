require 'test_helper'

class ButchersControllerTest < ActionController::TestCase
  setup do
    @butcher = butchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:butchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create butcher" do
    assert_difference('Butcher.count') do
      post :create, butcher: { address: @butcher.address, name: @butcher.name, telephone: @butcher.telephone }
    end

    assert_redirected_to butcher_path(assigns(:butcher))
  end

  test "should show butcher" do
    get :show, id: @butcher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @butcher
    assert_response :success
  end

  test "should update butcher" do
    put :update, id: @butcher, butcher: { address: @butcher.address, name: @butcher.name, telephone: @butcher.telephone }
    assert_redirected_to butcher_path(assigns(:butcher))
  end

  test "should destroy butcher" do
    assert_difference('Butcher.count', -1) do
      delete :destroy, id: @butcher
    end

    assert_redirected_to butchers_path
  end
end

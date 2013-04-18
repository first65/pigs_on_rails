require 'test_helper'

class PigsControllerTest < ActionController::TestCase
  setup do
    @pig = pigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pig" do
    assert_difference('Pig.count') do
      post :create, pig: { age: @pig.age, litter_id: @pig.litter_id, name: @pig.name, status: @pig.status }
    end

    assert_redirected_to pig_path(assigns(:pig))
  end

  test "should show pig" do
    get :show, id: @pig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pig
    assert_response :success
  end

  test "should update pig" do
    put :update, id: @pig, pig: { age: @pig.age, litter_id: @pig.litter_id, name: @pig.name, status: @pig.status }
    assert_redirected_to pig_path(assigns(:pig))
  end

  test "should destroy pig" do
    assert_difference('Pig.count', -1) do
      delete :destroy, id: @pig
    end

    assert_redirected_to pigs_path
  end
end

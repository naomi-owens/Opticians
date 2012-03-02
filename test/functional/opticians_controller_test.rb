require 'test_helper'

class OpticiansControllerTest < ActionController::TestCase
  setup do
    @optician = opticians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opticians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optician" do
    assert_difference('Optician.count') do
      post :create, optician: @optician.attributes
    end

    assert_redirected_to optician_path(assigns(:optician))
  end

  test "should show optician" do
    get :show, id: @optician.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optician.to_param
    assert_response :success
  end

  test "should update optician" do
    put :update, id: @optician.to_param, optician: @optician.attributes
    assert_redirected_to optician_path(assigns(:optician))
  end

  test "should destroy optician" do
    assert_difference('Optician.count', -1) do
      delete :destroy, id: @optician.to_param
    end

    assert_redirected_to opticians_path
  end
end

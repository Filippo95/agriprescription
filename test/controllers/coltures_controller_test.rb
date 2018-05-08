require 'test_helper'

class ColturesControllerTest < ActionController::TestCase
  setup do
    @colture = coltures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coltures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colture" do
    assert_difference('Colture.count') do
      post :create, colture: { id_cat: @colture.id_cat, name: @colture.name }
    end

    assert_redirected_to colture_path(assigns(:colture))
  end

  test "should show colture" do
    get :show, id: @colture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colture
    assert_response :success
  end

  test "should update colture" do
    patch :update, id: @colture, colture: { id_cat: @colture.id_cat, name: @colture.name }
    assert_redirected_to colture_path(assigns(:colture))
  end

  test "should destroy colture" do
    assert_difference('Colture.count', -1) do
      delete :destroy, id: @colture
    end

    assert_redirected_to coltures_path
  end
end

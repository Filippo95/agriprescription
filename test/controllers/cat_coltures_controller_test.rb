require 'test_helper'

class CatColturesControllerTest < ActionController::TestCase
  setup do
    @cat_colture = cat_coltures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_coltures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_colture" do
    assert_difference('CatColture.count') do
      post :create, cat_colture: { id_parent: @cat_colture.id_parent, name: @cat_colture.name }
    end

    assert_redirected_to cat_colture_path(assigns(:cat_colture))
  end

  test "should show cat_colture" do
    get :show, id: @cat_colture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_colture
    assert_response :success
  end

  test "should update cat_colture" do
    patch :update, id: @cat_colture, cat_colture: { id_parent: @cat_colture.id_parent, name: @cat_colture.name }
    assert_redirected_to cat_colture_path(assigns(:cat_colture))
  end

  test "should destroy cat_colture" do
    assert_difference('CatColture.count', -1) do
      delete :destroy, id: @cat_colture
    end

    assert_redirected_to cat_coltures_path
  end
end

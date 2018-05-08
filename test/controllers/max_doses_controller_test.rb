require 'test_helper'

class MaxDosesControllerTest < ActionController::TestCase
  setup do
    @max_dose = max_doses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:max_doses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create max_dose" do
    assert_difference('MaxDose.count') do
      post :create, max_dose: { id_colture: @max_dose.id_colture, id_product: @max_dose.id_product, max_gr_ha: @max_dose.max_gr_ha }
    end

    assert_redirected_to max_dose_path(assigns(:max_dose))
  end

  test "should show max_dose" do
    get :show, id: @max_dose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @max_dose
    assert_response :success
  end

  test "should update max_dose" do
    patch :update, id: @max_dose, max_dose: { id_colture: @max_dose.id_colture, id_product: @max_dose.id_product, max_gr_ha: @max_dose.max_gr_ha }
    assert_redirected_to max_dose_path(assigns(:max_dose))
  end

  test "should destroy max_dose" do
    assert_difference('MaxDose.count', -1) do
      delete :destroy, id: @max_dose
    end

    assert_redirected_to max_doses_path
  end
end

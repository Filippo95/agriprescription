require 'test_helper'

class PrescriptionRowsControllerTest < ActionController::TestCase
  setup do
    @prescription_row = prescription_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescription_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescription_row" do
    assert_difference('PrescriptionRow.count') do
      post :create, prescription_row: { dose_per_ha: @prescription_row.dose_per_ha, id_prescription: @prescription_row.id_prescription, id_product: @prescription_row.id_product }
    end

    assert_redirected_to prescription_row_path(assigns(:prescription_row))
  end

  test "should show prescription_row" do
    get :show, id: @prescription_row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescription_row
    assert_response :success
  end

  test "should update prescription_row" do
    patch :update, id: @prescription_row, prescription_row: { dose_per_ha: @prescription_row.dose_per_ha, id_prescription: @prescription_row.id_prescription, id_product: @prescription_row.id_product }
    assert_redirected_to prescription_row_path(assigns(:prescription_row))
  end

  test "should destroy prescription_row" do
    assert_difference('PrescriptionRow.count', -1) do
      delete :destroy, id: @prescription_row
    end

    assert_redirected_to prescription_rows_path
  end
end

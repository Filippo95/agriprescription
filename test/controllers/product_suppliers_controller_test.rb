require 'test_helper'

class ProductSuppliersControllerTest < ActionController::TestCase
  setup do
    @product_supplier = product_suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_supplier" do
    assert_difference('ProductSupplier.count') do
      post :create, product_supplier: { id_product: @product_supplier.id_product, id_supplier: @product_supplier.id_supplier }
    end

    assert_redirected_to product_supplier_path(assigns(:product_supplier))
  end

  test "should show product_supplier" do
    get :show, id: @product_supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_supplier
    assert_response :success
  end

  test "should update product_supplier" do
    patch :update, id: @product_supplier, product_supplier: { id_product: @product_supplier.id_product, id_supplier: @product_supplier.id_supplier }
    assert_redirected_to product_supplier_path(assigns(:product_supplier))
  end

  test "should destroy product_supplier" do
    assert_difference('ProductSupplier.count', -1) do
      delete :destroy, id: @product_supplier
    end

    assert_redirected_to product_suppliers_path
  end
end

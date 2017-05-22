require 'test_helper'

class PrescriptionItemsControllerTest < ActionController::TestCase
  setup do
    @prescription_item = prescription_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prescription_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prescription_item" do
    assert_difference('PrescriptionItem.count') do
      post :create, prescription_item: { drug_form: @prescription_item.drug_form, drug_name: @prescription_item.drug_name, prescription_id: @prescription_item.prescription_id, price: @prescription_item.price, quantity: @prescription_item.quantity }
    end

    assert_redirected_to prescription_item_path(assigns(:prescription_item))
  end

  test "should show prescription_item" do
    get :show, id: @prescription_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prescription_item
    assert_response :success
  end

  test "should update prescription_item" do
    patch :update, id: @prescription_item, prescription_item: { drug_form: @prescription_item.drug_form, drug_name: @prescription_item.drug_name, prescription_id: @prescription_item.prescription_id, price: @prescription_item.price, quantity: @prescription_item.quantity }
    assert_redirected_to prescription_item_path(assigns(:prescription_item))
  end

  test "should destroy prescription_item" do
    assert_difference('PrescriptionItem.count', -1) do
      delete :destroy, id: @prescription_item
    end

    assert_redirected_to prescription_items_path
  end
end

require 'test_helper'

class CloudMarcosControllerTest < ActionController::TestCase
  setup do
    @cloud_marco = cloud_marcos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cloud_marcos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cloud_marco" do
    assert_difference('CloudMarco.count') do
      post :create, cloud_marco: { catalogado: @cloud_marco.catalogado, descripcion: @cloud_marco.descripcion, gasto_ingreso: @cloud_marco.gasto_ingreso, moneda: @cloud_marco.moneda, num_contrato: @cloud_marco.num_contrato, producto: @cloud_marco.producto, provedor: @cloud_marco.provedor, saldo: @cloud_marco.saldo, tipo: @cloud_marco.tipo, vigencia: @cloud_marco.vigencia }
    end

    assert_redirected_to cloud_marco_path(assigns(:cloud_marco))
  end

  test "should show cloud_marco" do
    get :show, id: @cloud_marco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cloud_marco
    assert_response :success
  end

  test "should update cloud_marco" do
    patch :update, id: @cloud_marco, cloud_marco: { catalogado: @cloud_marco.catalogado, descripcion: @cloud_marco.descripcion, gasto_ingreso: @cloud_marco.gasto_ingreso, moneda: @cloud_marco.moneda, num_contrato: @cloud_marco.num_contrato, producto: @cloud_marco.producto, provedor: @cloud_marco.provedor, saldo: @cloud_marco.saldo, tipo: @cloud_marco.tipo, vigencia: @cloud_marco.vigencia }
    assert_redirected_to cloud_marco_path(assigns(:cloud_marco))
  end

  test "should destroy cloud_marco" do
    assert_difference('CloudMarco.count', -1) do
      delete :destroy, id: @cloud_marco
    end

    assert_redirected_to cloud_marcos_path
  end
end

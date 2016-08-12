require 'test_helper'

class CloudTdpsControllerTest < ActionController::TestCase
  setup do
    @cloud_tdp = cloud_tdps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cloud_tdps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cloud_tdp" do
    assert_difference('CloudTdp.count') do
      post :create, cloud_tdp: { cliente: @cloud_tdp.cliente, conformidad: @cloud_tdp.conformidad, contrato: @cloud_tdp.contrato, descripcion: @cloud_tdp.descripcion, jefe_proyecto: @cloud_tdp.jefe_proyecto, licitaciones: @cloud_tdp.licitaciones, monto_inc_igv: @cloud_tdp.monto_inc_igv, observacion: @cloud_tdp.observacion, ote: @cloud_tdp.ote, plantilla_economica: @cloud_tdp.plantilla_economica, pre_venta: @cloud_tdp.pre_venta }
    end

    assert_redirected_to cloud_tdp_path(assigns(:cloud_tdp))
  end

  test "should show cloud_tdp" do
    get :show, id: @cloud_tdp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cloud_tdp
    assert_response :success
  end

  test "should update cloud_tdp" do
    patch :update, id: @cloud_tdp, cloud_tdp: { cliente: @cloud_tdp.cliente, conformidad: @cloud_tdp.conformidad, contrato: @cloud_tdp.contrato, descripcion: @cloud_tdp.descripcion, jefe_proyecto: @cloud_tdp.jefe_proyecto, licitaciones: @cloud_tdp.licitaciones, monto_inc_igv: @cloud_tdp.monto_inc_igv, observacion: @cloud_tdp.observacion, ote: @cloud_tdp.ote, plantilla_economica: @cloud_tdp.plantilla_economica, pre_venta: @cloud_tdp.pre_venta }
    assert_redirected_to cloud_tdp_path(assigns(:cloud_tdp))
  end

  test "should destroy cloud_tdp" do
    assert_difference('CloudTdp.count', -1) do
      delete :destroy, id: @cloud_tdp
    end

    assert_redirected_to cloud_tdps_path
  end
end

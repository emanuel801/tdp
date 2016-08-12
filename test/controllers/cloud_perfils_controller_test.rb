require 'test_helper'

class CloudPerfilsControllerTest < ActionController::TestCase
  setup do
    @cloud_perfil = cloud_perfils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cloud_perfils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cloud_perfil" do
    assert_difference('CloudPerfil.count') do
      post :create, cloud_perfil: { certificacion: @cloud_perfil.certificacion, concepto: @cloud_perfil.concepto, fabricante: @cloud_perfil.fabricante, fecha_vencimiento: @cloud_perfil.fecha_vencimiento, nombre: @cloud_perfil.nombre, periodo_realizacion: @cloud_perfil.periodo_realizacion, tecnologia: @cloud_perfil.tecnologia }
    end

    assert_redirected_to cloud_perfil_path(assigns(:cloud_perfil))
  end

  test "should show cloud_perfil" do
    get :show, id: @cloud_perfil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cloud_perfil
    assert_response :success
  end

  test "should update cloud_perfil" do
    patch :update, id: @cloud_perfil, cloud_perfil: { certificacion: @cloud_perfil.certificacion, concepto: @cloud_perfil.concepto, fabricante: @cloud_perfil.fabricante, fecha_vencimiento: @cloud_perfil.fecha_vencimiento, nombre: @cloud_perfil.nombre, periodo_realizacion: @cloud_perfil.periodo_realizacion, tecnologia: @cloud_perfil.tecnologia }
    assert_redirected_to cloud_perfil_path(assigns(:cloud_perfil))
  end

  test "should destroy cloud_perfil" do
    assert_difference('CloudPerfil.count', -1) do
      delete :destroy, id: @cloud_perfil
    end

    assert_redirected_to cloud_perfils_path
  end
end

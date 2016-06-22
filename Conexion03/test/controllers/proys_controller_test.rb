require 'test_helper'

class ProysControllerTest < ActionController::TestCase
  setup do
    @proy = proys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proy" do
    assert_difference('Proy.count') do
      post :create, proy: { Alumno_id: @proy.Alumno_id, horas: @proy.horas, nombre_proy: @proy.nombre_proy }
    end

    assert_redirected_to proy_path(assigns(:proy))
  end

  test "should show proy" do
    get :show, id: @proy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proy
    assert_response :success
  end

  test "should update proy" do
    patch :update, id: @proy, proy: { Alumno_id: @proy.Alumno_id, horas: @proy.horas, nombre_proy: @proy.nombre_proy }
    assert_redirected_to proy_path(assigns(:proy))
  end

  test "should destroy proy" do
    assert_difference('Proy.count', -1) do
      delete :destroy, id: @proy
    end

    assert_redirected_to proys_path
  end
end

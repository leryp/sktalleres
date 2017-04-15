require 'test_helper'

class AreaEstudiosControllerTest < ActionController::TestCase
  setup do
    @area_estudio = area_estudios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_estudios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_estudio" do
    assert_difference('AreaEstudio.count') do
      post :create, area_estudio: { nombre: @area_estudio.nombre }
    end

    assert_redirected_to area_estudio_path(assigns(:area_estudio))
  end

  test "should show area_estudio" do
    get :show, id: @area_estudio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_estudio
    assert_response :success
  end

  test "should update area_estudio" do
    patch :update, id: @area_estudio, area_estudio: { nombre: @area_estudio.nombre }
    assert_redirected_to area_estudio_path(assigns(:area_estudio))
  end

  test "should destroy area_estudio" do
    assert_difference('AreaEstudio.count', -1) do
      delete :destroy, id: @area_estudio
    end

    assert_redirected_to area_estudios_path
  end
end

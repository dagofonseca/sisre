require 'test_helper'

class BienestarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bienestar = bienestars(:one)
  end

  test "should get index" do
    get bienestars_url
    assert_response :success
  end

  test "should get new" do
    get new_bienestar_url
    assert_response :success
  end

  test "should create bienestar" do
    assert_difference('Bienestar.count') do
      post bienestars_url, params: { bienestar: { contrasena: @bienestar.contrasena, correo: @bienestar.correo, identificador: @bienestar.identificador } }
    end

    assert_redirected_to bienestar_url(Bienestar.last)
  end

  test "should show bienestar" do
    get bienestar_url(@bienestar)
    assert_response :success
  end

  test "should get edit" do
    get edit_bienestar_url(@bienestar)
    assert_response :success
  end

  test "should update bienestar" do
    patch bienestar_url(@bienestar), params: { bienestar: { contrasena: @bienestar.contrasena, correo: @bienestar.correo, identificador: @bienestar.identificador } }
    assert_redirected_to bienestar_url(@bienestar)
  end

  test "should destroy bienestar" do
    assert_difference('Bienestar.count', -1) do
      delete bienestar_url(@bienestar)
    end

    assert_redirected_to bienestars_url
  end
end

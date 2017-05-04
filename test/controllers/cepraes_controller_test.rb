require 'test_helper'

class CepraesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ceprae = cepraes(:one)
  end

  test "should get index" do
    get cepraes_url
    assert_response :success
  end

  test "should get new" do
    get new_ceprae_url
    assert_response :success
  end

  test "should create ceprae" do
    assert_difference('Ceprae.count') do
      post cepraes_url, params: { ceprae: { contrasena: @ceprae.contrasena, correo: @ceprae.correo, identificador: @ceprae.identificador } }
    end

    assert_redirected_to ceprae_url(Ceprae.last)
  end

  test "should show ceprae" do
    get ceprae_url(@ceprae)
    assert_response :success
  end

  test "should get edit" do
    get edit_ceprae_url(@ceprae)
    assert_response :success
  end

  test "should update ceprae" do
    patch ceprae_url(@ceprae), params: { ceprae: { contrasena: @ceprae.contrasena, correo: @ceprae.correo, identificador: @ceprae.identificador } }
    assert_redirected_to ceprae_url(@ceprae)
  end

  test "should destroy ceprae" do
    assert_difference('Ceprae.count', -1) do
      delete ceprae_url(@ceprae)
    end

    assert_redirected_to cepraes_url
  end
end

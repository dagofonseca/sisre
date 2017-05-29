require 'test_helper'

class PermanentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permanente = permanentes(:one)
  end

  test "should get index" do
    get permanentes_url
    assert_response :success
  end

  test "should get new" do
    get new_permanente_url
    assert_response :success
  end

  test "should create permanente" do
    assert_difference('Permanente.count') do
      post permanentes_url, params: { permanente: { fechaFin: @permanente.fechaFin, fechaInicio: @permanente.fechaInicio, numeroDeVecesEvento: @permanente.numeroDeVecesEvento } }
    end

    assert_redirected_to permanente_url(Permanente.last)
  end

  test "should show permanente" do
    get permanente_url(@permanente)
    assert_response :success
  end

  test "should get edit" do
    get edit_permanente_url(@permanente)
    assert_response :success
  end

  test "should update permanente" do
    patch permanente_url(@permanente), params: { permanente: { fechaFin: @permanente.fechaFin, fechaInicio: @permanente.fechaInicio, numeroDeVecesEvento: @permanente.numeroDeVecesEvento } }
    assert_redirected_to permanente_url(@permanente)
  end

  test "should destroy permanente" do
    assert_difference('Permanente.count', -1) do
      delete permanente_url(@permanente)
    end

    assert_redirected_to permanentes_url
  end
end

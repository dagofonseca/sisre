require 'test_helper'

class PuntualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puntual = puntuals(:one)
  end

  test "should get index" do
    get puntuals_url
    assert_response :success
  end

  test "should get new" do
    get new_puntual_url
    assert_response :success
  end

  test "should create puntual" do
    assert_difference('Puntual.count') do
      post puntuals_url, params: { puntual: { fechaYHoraFin: @puntual.fechaYHoraFin, fechaYHoraInicio: @puntual.fechaYHoraInicio } }
    end

    assert_redirected_to puntual_url(Puntual.last)
  end

  test "should show puntual" do
    get puntual_url(@puntual)
    assert_response :success
  end

  test "should get edit" do
    get edit_puntual_url(@puntual)
    assert_response :success
  end

  test "should update puntual" do
    patch puntual_url(@puntual), params: { puntual: { fechaYHoraFin: @puntual.fechaYHoraFin, fechaYHoraInicio: @puntual.fechaYHoraInicio } }
    assert_redirected_to puntual_url(@puntual)
  end

  test "should destroy puntual" do
    assert_difference('Puntual.count', -1) do
      delete puntual_url(@puntual)
    end

    assert_redirected_to puntuals_url
  end
end

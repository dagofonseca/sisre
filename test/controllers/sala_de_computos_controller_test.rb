require 'test_helper'

class SalaDeComputosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sala_de_computo = sala_de_computos(:one)
  end

  test "should get index" do
    get sala_de_computos_url
    assert_response :success
  end

  test "should get new" do
    get new_sala_de_computo_url
    assert_response :success
  end

  test "should create sala_de_computo" do
    assert_difference('SalaDeComputo.count') do
      post sala_de_computos_url, params: { sala_de_computo: { tipoDePc: @sala_de_computo.tipoDePc, videoBeam: @sala_de_computo.videoBeam } }
    end

    assert_redirected_to sala_de_computo_url(SalaDeComputo.last)
  end

  test "should show sala_de_computo" do
    get sala_de_computo_url(@sala_de_computo)
    assert_response :success
  end

  test "should get edit" do
    get edit_sala_de_computo_url(@sala_de_computo)
    assert_response :success
  end

  test "should update sala_de_computo" do
    patch sala_de_computo_url(@sala_de_computo), params: { sala_de_computo: { tipoDePc: @sala_de_computo.tipoDePc, videoBeam: @sala_de_computo.videoBeam } }
    assert_redirected_to sala_de_computo_url(@sala_de_computo)
  end

  test "should destroy sala_de_computo" do
    assert_difference('SalaDeComputo.count', -1) do
      delete sala_de_computo_url(@sala_de_computo)
    end

    assert_redirected_to sala_de_computos_url
  end
end

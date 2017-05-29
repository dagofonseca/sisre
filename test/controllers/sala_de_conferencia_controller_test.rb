require 'test_helper'

class SalaDeConferenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sala_de_conferencium = sala_de_conferencia(:one)
  end

  test "should get index" do
    get sala_de_conferencia_url
    assert_response :success
  end

  test "should get new" do
    get new_sala_de_conferencium_url
    assert_response :success
  end

  test "should create sala_de_conferencium" do
    assert_difference('SalaDeConferencium.count') do
      post sala_de_conferencia_url, params: { sala_de_conferencium: {  } }
    end

    assert_redirected_to sala_de_conferencium_url(SalaDeConferencium.last)
  end

  test "should show sala_de_conferencium" do
    get sala_de_conferencium_url(@sala_de_conferencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_sala_de_conferencium_url(@sala_de_conferencium)
    assert_response :success
  end

  test "should update sala_de_conferencium" do
    patch sala_de_conferencium_url(@sala_de_conferencium), params: { sala_de_conferencium: {  } }
    assert_redirected_to sala_de_conferencium_url(@sala_de_conferencium)
  end

  test "should destroy sala_de_conferencium" do
    assert_difference('SalaDeConferencium.count', -1) do
      delete sala_de_conferencium_url(@sala_de_conferencium)
    end

    assert_redirected_to sala_de_conferencia_url
  end
end

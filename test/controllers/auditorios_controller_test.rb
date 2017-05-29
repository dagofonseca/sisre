require 'test_helper'

class AuditoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auditorio = auditorios(:one)
  end

  test "should get index" do
    get auditorios_url
    assert_response :success
  end

  test "should get new" do
    get new_auditorio_url
    assert_response :success
  end

  test "should create auditorio" do
    assert_difference('Auditorio.count') do
      post auditorios_url, params: { auditorio: { atril: @auditorio.atril, videoBeam: @auditorio.videoBeam } }
    end

    assert_redirected_to auditorio_url(Auditorio.last)
  end

  test "should show auditorio" do
    get auditorio_url(@auditorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_auditorio_url(@auditorio)
    assert_response :success
  end

  test "should update auditorio" do
    patch auditorio_url(@auditorio), params: { auditorio: { atril: @auditorio.atril, videoBeam: @auditorio.videoBeam } }
    assert_redirected_to auditorio_url(@auditorio)
  end

  test "should destroy auditorio" do
    assert_difference('Auditorio.count', -1) do
      delete auditorio_url(@auditorio)
    end

    assert_redirected_to auditorios_url
  end
end

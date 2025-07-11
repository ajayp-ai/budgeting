require "test_helper"

class Admin::PhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_phase = admin_phases(:one)
  end

  test "should get index" do
    get admin_phases_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_phase_url
    assert_response :success
  end

  test "should create admin_phase" do
    assert_difference("Admin::Phase.count") do
      post admin_phases_url, params: { admin_phase: { end_date: @admin_phase.end_date, name: @admin_phase.name, start_date: @admin_phase.start_date } }
    end

    assert_redirected_to admin_phase_url(Admin::Phase.last)
  end

  test "should show admin_phase" do
    get admin_phase_url(@admin_phase)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_phase_url(@admin_phase)
    assert_response :success
  end

  test "should update admin_phase" do
    patch admin_phase_url(@admin_phase), params: { admin_phase: { end_date: @admin_phase.end_date, name: @admin_phase.name, start_date: @admin_phase.start_date } }
    assert_redirected_to admin_phase_url(@admin_phase)
  end

  test "should destroy admin_phase" do
    assert_difference("Admin::Phase.count", -1) do
      delete admin_phase_url(@admin_phase)
    end

    assert_redirected_to admin_phases_url
  end
end

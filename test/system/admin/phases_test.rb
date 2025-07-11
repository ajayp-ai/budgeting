require "application_system_test_case"

class Admin::PhasesTest < ApplicationSystemTestCase
  setup do
    @admin_phase = admin_phases(:one)
  end

  test "visiting the index" do
    visit admin_phases_url
    assert_selector "h1", text: "Phases"
  end

  test "should create phase" do
    visit admin_phases_url
    click_on "New phase"

    fill_in "End date", with: @admin_phase.end_date
    fill_in "Name", with: @admin_phase.name
    fill_in "Start date", with: @admin_phase.start_date
    click_on "Create Phase"

    assert_text "Phase was successfully created"
    click_on "Back"
  end

  test "should update Phase" do
    visit admin_phase_url(@admin_phase)
    click_on "Edit this phase", match: :first

    fill_in "End date", with: @admin_phase.end_date.to_s
    fill_in "Name", with: @admin_phase.name
    fill_in "Start date", with: @admin_phase.start_date.to_s
    click_on "Update Phase"

    assert_text "Phase was successfully updated"
    click_on "Back"
  end

  test "should destroy Phase" do
    visit admin_phase_url(@admin_phase)
    click_on "Destroy this phase", match: :first

    assert_text "Phase was successfully destroyed"
  end
end

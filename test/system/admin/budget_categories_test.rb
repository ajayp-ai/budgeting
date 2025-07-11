require "application_system_test_case"

class Admin::BudgetCategoriesTest < ApplicationSystemTestCase
  setup do
    @admin_budget_category = admin_budget_categories(:one)
  end

  test "visiting the index" do
    visit admin_budget_categories_url
    assert_selector "h1", text: "Budget categories"
  end

  test "should create budget category" do
    visit admin_budget_categories_url
    click_on "New budget category"

    fill_in "Budget", with: @admin_budget_category.budget_id
    fill_in "Name", with: @admin_budget_category.name
    fill_in "Spending limit percentage", with: @admin_budget_category.spending_limit_percentage
    click_on "Create Budget category"

    assert_text "Budget category was successfully created"
    click_on "Back"
  end

  test "should update Budget category" do
    visit admin_budget_category_url(@admin_budget_category)
    click_on "Edit this budget category", match: :first

    fill_in "Budget", with: @admin_budget_category.budget_id
    fill_in "Name", with: @admin_budget_category.name
    fill_in "Spending limit percentage", with: @admin_budget_category.spending_limit_percentage
    click_on "Update Budget category"

    assert_text "Budget category was successfully updated"
    click_on "Back"
  end

  test "should destroy Budget category" do
    visit admin_budget_category_url(@admin_budget_category)
    click_on "Destroy this budget category", match: :first

    assert_text "Budget category was successfully destroyed"
  end
end

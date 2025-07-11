require "test_helper"

class Admin::BudgetCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_budget_category = admin_budget_categories(:one)
  end

  test "should get index" do
    get admin_budget_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_budget_category_url
    assert_response :success
  end

  test "should create admin_budget_category" do
    assert_difference("Admin::BudgetCategory.count") do
      post admin_budget_categories_url, params: { admin_budget_category: { budget_id: @admin_budget_category.budget_id, name: @admin_budget_category.name, spending_limit_percentage: @admin_budget_category.spending_limit_percentage } }
    end

    assert_redirected_to admin_budget_category_url(Admin::BudgetCategory.last)
  end

  test "should show admin_budget_category" do
    get admin_budget_category_url(@admin_budget_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_budget_category_url(@admin_budget_category)
    assert_response :success
  end

  test "should update admin_budget_category" do
    patch admin_budget_category_url(@admin_budget_category), params: { admin_budget_category: { budget_id: @admin_budget_category.budget_id, name: @admin_budget_category.name, spending_limit_percentage: @admin_budget_category.spending_limit_percentage } }
    assert_redirected_to admin_budget_category_url(@admin_budget_category)
  end

  test "should destroy admin_budget_category" do
    assert_difference("Admin::BudgetCategory.count", -1) do
      delete admin_budget_category_url(@admin_budget_category)
    end

    assert_redirected_to admin_budget_categories_url
  end
end

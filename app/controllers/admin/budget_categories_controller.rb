class Admin::BudgetCategoriesController < ApplicationController
  before_action :set_admin_budget_category, only: %i[ show edit update destroy ]

  # GET /admin/budget_categories or /admin/budget_categories.json
  def index
    @admin_budget_categories = Admin::BudgetCategory.all
  end

  # GET /admin/budget_categories/1 or /admin/budget_categories/1.json
  def show
  end

  # GET /admin/budget_categories/new
  def new
    @admin_budget_category = Admin::BudgetCategory.new
  end

  # GET /admin/budget_categories/1/edit
  def edit
  end

  # POST /admin/budget_categories or /admin/budget_categories.json
  def create
    @admin_budget_category = Admin::BudgetCategory.new(admin_budget_category_params)

    respond_to do |format|
      if @admin_budget_category.save
        format.html { redirect_to @admin_budget_category, notice: "Budget category was successfully created." }
        format.json { render :show, status: :created, location: @admin_budget_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_budget_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/budget_categories/1 or /admin/budget_categories/1.json
  def update
    respond_to do |format|
      if @admin_budget_category.update(admin_budget_category_params)
        format.html { redirect_to @admin_budget_category, notice: "Budget category was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_budget_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_budget_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/budget_categories/1 or /admin/budget_categories/1.json
  def destroy
    @admin_budget_category.destroy!

    respond_to do |format|
      format.html { redirect_to admin_budget_categories_path, status: :see_other, notice: "Budget category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_budget_category
      @admin_budget_category = Admin::BudgetCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_budget_category_params
      params.require(:admin_budget_category).permit(:name, :spending_limit_percentage, :budget_id)
    end
end

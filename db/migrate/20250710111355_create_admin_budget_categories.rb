class CreateAdminBudgetCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :admin_budget_categories do |t|
      t.string :name
      t.integer :spending_limit_percentage
      t.integer :budget_id

      t.timestamps
    end
  end
end

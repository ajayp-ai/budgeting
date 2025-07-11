class CreateBudgetCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :budget_categories do |t|
      t.string :name
      t.integer :spending_limit_percentage
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end

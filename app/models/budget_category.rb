class BudgetCategory < ApplicationRecord
  belongs_to :budget
  has_many :projects

  def allocated_amount
    projects.joins(:votes).sum(:amount)
  end

  def limit_amount
    (budget.total_amount * (spending_limit_percentage || 0) / 100.0)
  end

  def limit_exceeded?(new_vote_amount)
    (allocated_amount + new_vote_amount) > limit_amount
  end
end

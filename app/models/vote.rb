class Vote < ApplicationRecord
  belongs_to :project

  validate :category_limit_check

  def category_limit_check
    category = project.budget_category
    if category.limit_exceeded?(amount)
      errors.add(:base, "Category limit exceeded (#{category.name})")
    end
  end
end

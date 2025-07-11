class Project < ApplicationRecord
  belongs_to :budget_category
  has_one :impact_metric

  accepts_nested_attributes_for :impact_metric
end

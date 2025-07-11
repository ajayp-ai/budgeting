class DashboardController < ApplicationController
	def index
    	@categories = BudgetCategory.includes(:projects)
    	@phases = Phase.all
    	@projects = Project.includes(:impact_metric)
  	end
end

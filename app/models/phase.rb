class Phase < ApplicationRecord
	has_many :budgets

  	def active?
    	start_date <= Time.current && end_date >= Time.current
  	end
end

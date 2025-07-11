class CreatePhases < ActiveRecord::Migration[7.2]
  def change
    create_table :phases do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.text :voting_rules
      t.text :eligibility_rules

      t.timestamps
    end
  end
end

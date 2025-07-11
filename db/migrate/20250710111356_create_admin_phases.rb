class CreateAdminPhases < ActiveRecord::Migration[7.2]
  def change
    create_table :admin_phases do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end

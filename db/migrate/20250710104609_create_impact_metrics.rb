class CreateImpactMetrics < ActiveRecord::Migration[7.2]
  def change
    create_table :impact_metrics do |t|
      t.references :project, null: false, foreign_key: true
      t.integer :estimated_beneficiaries
      t.integer :timeline_months
      t.integer :sustainability_score

      t.timestamps
    end
  end
end

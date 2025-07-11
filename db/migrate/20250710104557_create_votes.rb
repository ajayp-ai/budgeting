class CreateVotes < ActiveRecord::Migration[7.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.references :project, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end

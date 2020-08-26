class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :title
      t.date :start_date
      t.date :end_date
      t.date :organization_exit_date
      t.decimal :price
      t.boolean :exit
      t.string :top_syndicate
      t.integer :person_id
      t.decimal :funding_amount
      t.integer :candidate_id

      t.timestamps
    end
  end
end

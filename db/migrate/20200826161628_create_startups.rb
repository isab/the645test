class CreateStartups < ActiveRecord::Migration[6.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.string :permalink
      t.string :industry
      t.decimal :funding
      t.integer :founded_year
      t.date :last_funding_date
      t.string :website
      t.string :location
      t.integer :founder_ids, array: true, default: []
      t.date :on_crunchbase_since
      t.string :investors, array: true, default: []

      t.timestamps
    end
  end
end

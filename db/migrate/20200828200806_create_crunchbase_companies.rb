class CreateCrunchbaseCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :crunchbase_companies do |t|
      t.string :permalink
      t.string :name
      t.string :category_code
      t.decimal :funding_total_usd
      t.string :status
      t.string :country_code
      t.string :state_code
      t.string :region
      t.string :city
      t.string :funding_rounds
      t.date :founded_at
      t.string :founded_month
      t.string :founded_quarter
      t.date :founded_year
      t.date :first_funding_at
      t.date :last_funding_at
      t.date :last_milestone_at

      t.timestamps
    end
  end
end

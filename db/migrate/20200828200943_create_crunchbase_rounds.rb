class CreateCrunchbaseRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :crunchbase_rounds do |t|
      t.string :company_permalink
      t.string :company_name
      t.string :company_category_code
      t.string :company_country_code
      t.string :company_state_code
      t.string :company_region
      t.string :company_city
      t.string :funding_round_type
      t.date :funded_at
      t.date :funded_year
      t.date :funded_month
      t.date :funded_quarter
      t.decimal :raised_amount_usd

      t.timestamps
    end
  end
end

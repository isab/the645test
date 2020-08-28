class CreateCrunchbaseAcquisitions < ActiveRecord::Migration[6.0]
  def change
    create_table :crunchbase_acquisitions do |t|
      t.string :company_permalink
      t.string :company_name
      t.string :company_category_code
      t.string :company_country_code
      t.string :company_state_code
      t.string :company_region
      t.string :company_city
      t.string :acquirer_permalink
      t.string :acquirer_name
      t.string :acquirer_category_code
      t.string :acquirer_country_code
      t.string :acquirer_state_code
      t.string :acquirer_region
      t.string :acquirer_city
      t.date :acquired_at
      t.date :acquired_month
      t.date :acquired_quarter
      t.date :acquired_year
      t.decimal :price_amount
      t.string :price_currency_code

      t.timestamps
    end
  end
end

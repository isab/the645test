class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :location
      t.string :linkedin_url
      t.string :twitter_url

      t.timestamps
    end
  end
end

class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|
      t.string :name
      t.string :description
      t.integer :salary
      t.integer :city
      t.integer :category_job_id
      t.integer :user_id
      t.timestamps
    end
  end
end

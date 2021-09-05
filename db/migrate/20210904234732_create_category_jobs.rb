class CreateCategoryJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :category_job do |t|
      t.string :category_name
      t.string :category_description

      t.timestamps
    end
  end
end

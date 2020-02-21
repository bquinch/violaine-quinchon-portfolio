class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.date :start_date
      t.date :end_date
      t.string :company
      t.string :role
      t.text :description
      t.string :company_logo_url

      t.timestamps
    end
  end
end

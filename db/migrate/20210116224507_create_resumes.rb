class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.text :description

      t.timestamps
    end
  end
end

class AddCategoryToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :category, :string
  end
end

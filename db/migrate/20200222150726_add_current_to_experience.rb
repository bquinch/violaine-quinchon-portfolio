class AddCurrentToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :current, :boolean
  end
end

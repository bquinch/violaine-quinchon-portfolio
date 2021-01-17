class AddPriorityToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :priority, :integer
  end
end

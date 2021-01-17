class Skill < ApplicationRecord
  validates :category, inclusion: { in: ["Technologies", "Communication", "Soft Skills"] }
  validates :priority, inclusion: { in: (1..10).to_a }

  def category_enum
    ["Technologies", "Communication", "Soft Skills"]
  end

  def priority_enum
    (1..10).to_a
  end
end

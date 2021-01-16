class Skill < ApplicationRecord
  validates :category, inclusion: { in: ["Technologies", "Communication", "Soft Skills"] }

  def category_enum
    ["Technologies", "Communication", "Soft Skills"]
  end
end

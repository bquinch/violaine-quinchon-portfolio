class Skill < ApplicationRecord
  validates :category, inclusion: { in: ["Technologies", "Communication", "Soft Skills"] }
end

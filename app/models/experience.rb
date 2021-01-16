class Experience < ApplicationRecord
  validates :company, :role, :category, :description, presence: true
  validates :category, inclusion: { in: ["Travail", "Études", "Centres d'intérêt"] }
  validate :end_date_after_start_date
  has_one_attached :photo

  def category_enum
    ["Travail", "Études", "Centres d'intérêt"]
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "La date de début doit être après la date de fin") if end_date < start_date
  end
end


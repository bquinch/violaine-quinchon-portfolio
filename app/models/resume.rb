class Resume < ApplicationRecord
  validates :description, presence: true
end

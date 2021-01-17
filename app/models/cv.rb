class Cv < ApplicationRecord
  has_one_attached :photo
  attr_accessor :remove_photo
  after_save { photo.purge if remove_photo == '1' }
end

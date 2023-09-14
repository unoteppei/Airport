class Post < ApplicationRecord
  belongs_to :user

  has_many_attached :image

  validates :airport_name, presence: true
  validates :prefecture, presence: true
  validates :impression, presence: true, length: { minimum: 5 }
  validates :image, presence: true

  geocoded_by :airport_name
    after_validation :geocode, if: :airport_name_changed?
end

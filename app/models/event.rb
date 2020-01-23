class Event < ApplicationRecord
  mount_uploader :photo, PictureUploader

  belongs_to :user
  has_many :guests

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

end

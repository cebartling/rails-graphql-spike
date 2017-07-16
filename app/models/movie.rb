class Movie < ApplicationRecord
  has_and_belongs_to_many :actors

  scope :year_released, -> (year) { where(year: year)}
end

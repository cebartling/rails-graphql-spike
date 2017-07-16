class Actor < ApplicationRecord

  enum gender: {male: 0, female: 1}

  has_and_belongs_to_many :movies

  scope :of_gender, -> (gender) {where(gender: gender)}
end

class Caregiver < ApplicationRecord
  belongs_to :family
  has_many :children, through: :family
end

class Child < ApplicationRecord
  belongs_to :family
  has_many :caregivers, through: :family
end

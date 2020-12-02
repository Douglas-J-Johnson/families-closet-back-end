class Family < ApplicationRecord
    has_many :caregivers
    has_many :children
end

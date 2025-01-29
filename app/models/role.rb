class Role < ApplicationRecord
    has_many :users
    has_many :permissions
    has_many :resources, through: :permissions
end

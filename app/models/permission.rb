class Permission < ApplicationRecord
  belongs_to :resource
  belongs_to :role
end

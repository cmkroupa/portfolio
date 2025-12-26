class Profile < ApplicationRecord
  serialize :interests, type: Array, coder: JSON
end

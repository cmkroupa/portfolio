class Item < ApplicationRecord
  validates :key, presence: true, uniqueness: true
  validates :value, presence: true

  def self.get(name)
    where(key: name.to_s).pick(:value) || "UNDEFINED"
  end
end

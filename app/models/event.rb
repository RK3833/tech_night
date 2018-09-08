class Event < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  enum status: { wait: 1, holding: 2, completed: 3 }
end

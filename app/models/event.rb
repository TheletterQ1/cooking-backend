class Event < ApplicationRecord
  has_many :schedulers
  has_many :users, through: :schedulers
end

class Restaurant < ApplicationRecord
  has_many :reviews
  validates_presence_of :name, :address, :category
end

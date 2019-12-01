class Item < ApplicationRecord
  validates_presence_of :name, :description, :unit_price

  belongs_to :merchant

  before_save :convert_unit_price
end

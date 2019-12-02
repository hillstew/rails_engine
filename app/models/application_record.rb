class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def convert_unit_price
    self.unit_price = self.unit_price.to_f / 100
  end

  def self.random
    order('RANDOM()').first
  end
end

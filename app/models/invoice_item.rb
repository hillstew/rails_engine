class InvoiceItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :item

  before_save :convert_unit_price
end

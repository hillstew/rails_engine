class Api::V1::InvoiceItems::FilterController < ApplicationController
  def find
    render json: InvoiceItemSerializer.new(InvoiceItem.find_by(find_params))
  end

  def find_all
    render json: InvoiceItemSerializer.new(InvoiceItem.where(find_params).order(:id))
  end

  def random
    render json: InvoiceItem.random
  end

  private
    def find_params
      params.permit(:id, :created_at, :updated_at, :item_id, :invoice_id, :quantity, :unit_price)
    end
end

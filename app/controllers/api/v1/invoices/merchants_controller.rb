class Api::V1::Invoices::MerchantsController < ApplicationController
  def show
    invoice = Invoice.find_by(id: params[:id])
    
    render json: MerchantSerializer.new(invoice.merchant)
  end
end

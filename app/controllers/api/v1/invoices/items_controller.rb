class Api::V1::Invoices::ItemsController < ApplicationController
  def index
    invoice = Invoice.find_by(id: params[:id])
 
    render json: ItemSerializer.new(invoice.items)
   end
end

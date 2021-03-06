class Api::V1::InvoiceItems::InvoicesController < ApplicationController
    def show
      invoice_item = InvoiceItem.find_by(id: params[:id])
      
      render json: InvoiceSerializer.new(invoice_item.invoice)
    end
end

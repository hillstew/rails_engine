class Api::V1::Items::MerchantsController < ApplicationController
  def show
    item = Item.find_by(id: params[:id])
    
    render json: MerchantSerializer.new(item.merchant)
  end
end

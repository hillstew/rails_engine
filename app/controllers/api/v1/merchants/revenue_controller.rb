class Api::V1::Merchants::RevenueController < ApplicationController
  def most_revenue
    render json: MerchantSerializer.new(Merchant.highest_revenue(params[:quantity]))
  end
end

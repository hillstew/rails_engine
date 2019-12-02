class Api::V1::Items::FilterController < ApplicationController
  def find
    render json: ItemSerializer.new(Item.find_by(find_params))
  end

  def find_all
    render json: ItemSerializer.new(Item.where(find_params).order(:id))
  end

  def random
    render json: Item.random
  end

  private
    def find_params
      params.permit(:id, :name, :description, :merchant_id, :unit_price, :created_at, :updated_at)
    end
end

class Api::V1::Customers::FilterController < ApplicationController
  def find
    render json: CustomerSerializer.new(Customer.find_by(find_params))
  end

  def find_all
    render json: CustomerSerializer.new(Customer.where(find_params))
  end

  def random
    render json: Customer.random
  end

  private
    def find_params
      params.permit(:first_name, :last_name, :created_at, :updated_at, :id)
    end
end

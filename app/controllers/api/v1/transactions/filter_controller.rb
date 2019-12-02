class Api::V1::Transactions::FilterController < ApplicationController
  def find
    render json: TransactionSerializer.new(Transaction.find_by(find_params))
  end

  def find_all
    render json: TransactionSerializer.new(Transaction.where(find_params).order(:id))
  end

  def random
    render json: Transaction.random
  end

  private
    def find_params
      params.permit(:id, :invoice_id, :credit_card_number, :result, :created_at, :updated_at)
    end
end

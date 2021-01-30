require "date"
class ReceiptsController < ApplicationController

  def index
    @receipts = Receipt.all
  end

  def show
    @receipt = Receipt.find(params[:id])
  end

  def new
    @receipt = Receipt.new
  end

  def create
    receipt_params[:movie_id].each do |movie_id|
      if movie_id != ""
        Receipt.create(movie_id: movie_id, user_id: receipt_params[:user_id], checkout_date: Time.now, due_date: Time.now + 7.days.to_i)
      end
    end
    redirect_to user_path(receipt_params[:user_id])
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    user = @receipt.user
    @receipt.destroy
    flash[:notice] = "Receipt deleted."
    redirect_to user_path(user)
  end

  private

  def receipt_params
    params.require(:receipt).permit(:user_id, :movie_id => [])
  end
end

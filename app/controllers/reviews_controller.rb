require "date"
class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to user_path(@review.user)

  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.update(review_params)

    if @review.save
      redirect_to user_path(@review.user)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    user = @review.user
    @review.destroy
    flash[:notice] = "Review deleted."
    redirect_to user_path(user)
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :user_id, :content, :rating)
  end

end

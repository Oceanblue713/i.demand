class VotesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @user = current_user
    @vote = current_user.build_vote(category: params[:category])
    if @vote.save
      flash[:success] = '投票しました'
      redirect_to root_url
    else 
      flash.now[:danger] = '投票できませんでした'
      render 'toppages/index'
    end
  end
  
  private
  
  def vote_params
    params.require(:vote).permit(:category)
  end
end

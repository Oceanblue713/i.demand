class RankingsController < ApplicationController
  def index
    @votes = Vote.find(Vote.group(:category).order('count(category) desc').pluck(:id))
    @rankings = Vote.group(:category).order('count(category) desc').count(:category)
  end
end

class RankingsController < ApplicationController
  def index
    @ranking_counts = Vote.ranking
    @votes = Vote.find(@ranking_counts)
  end
end

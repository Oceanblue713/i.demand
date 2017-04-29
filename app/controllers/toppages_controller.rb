class ToppagesController < ApplicationController
  def index
    @vote = Vote.new
  end
end

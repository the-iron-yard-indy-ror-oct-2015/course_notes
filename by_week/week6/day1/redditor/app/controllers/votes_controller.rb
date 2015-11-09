class VotesController < ApplicationController

  def create
    @link = Link.find(params[:link_id])
    if params[:downvote]
      @link.votes.create(value: -1)
    else
      @link.votes.create
    end
    redirect_to root_url
  end

end

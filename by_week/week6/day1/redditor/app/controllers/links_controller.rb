class LinksController < ApplicationController

  def index
    @links = Link.all.sort_by{|link| link.votes.sum(:value)}.reverse
    # @links = Link.select("COUNT('votes.id') as vote_count, links.*").joins(:votes).order("vote_count DESC").limit(25)
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to root_url
    else
      render "edit"
    end
  end

  def click
    @link = Link.find(params[:id])
    @link.votes.create
    redirect_to @link.url
  end


  private

  def link_params
    params.require(:link).permit(:title, :url, :summary)
  end

end

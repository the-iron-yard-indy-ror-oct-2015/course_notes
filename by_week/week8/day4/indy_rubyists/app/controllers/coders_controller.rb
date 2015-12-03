class CodersController < ApplicationController

  def index
    @all_users = Octokit.search_users(
              "location:Indianapolis language:Ruby type:User",
              :sort => "joined",
              :order => :asc,
              :page => params[:page])
    @users = @all_users[:items].collect{|u| Octokit.user(u[:id])}
  end

  def show
    @user = Octokit.user(params[:id])
    @events = Octokit.user_events(params[:id])
  end

end

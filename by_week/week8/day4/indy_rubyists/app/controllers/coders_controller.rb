class CodersController < ApplicationController

  def index
    @all_users = Octokit.search_users(
              "location:Indianapolis language:Ruby",
              :sort => "joined",
              :order => :asc,
              :page => params[:page])
    @users = @all_users[:items].collect{|u| Octokit.user(u[:id])}
  end

end

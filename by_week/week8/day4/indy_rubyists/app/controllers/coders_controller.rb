class CodersController < ApplicationController

  def index
    users = Octokit.search_users(
              "location:Indianapolis language:Ruby",
              :sort => "joined",
              :order => :asc)[:items]
    @users = users.collect{|u| Octokit.user(u[:id])}
  end

end

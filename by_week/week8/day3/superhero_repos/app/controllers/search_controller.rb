class SearchController < ApplicationController

  def search
    if params["hero"]
      @message = "#{params["hero"]} and associated repos"
      prior_hero = MARVEL_CLIENT.character(params[:hero])
      Rails.logger.info "MARVEL API RESPONSE: #{prior_hero.inspect}"
      if prior_hero["code"].to_s == "200"
        @hero = prior_hero["data"]["results"].first
      else
        @hero = "We couldn't find #{params["hero"]}."
      end
      @repos = Octokit.search_repositories(params["hero"], :sort => "stars")[:items]
    else
      @message = "Search for super-powered repos"
    end
  end

end

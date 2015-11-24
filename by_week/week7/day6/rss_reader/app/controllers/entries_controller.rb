class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    @entries = @entries.to_a.unshift(Site.first)
  end

end

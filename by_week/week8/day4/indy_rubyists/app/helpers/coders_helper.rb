module CodersHelper

  def paginate(octokit)
    total_pages = (octokit[:total_count].to_f/30).ceil
    pages = total_pages.times.collect do |page|
      "<li#{' class="active"' if (params[:page].to_i == page + 1) || (params[:page].nil? && page == 0)}>#{link_to page + 1, :page => page + 1}</li>"
    end
    "<nav><ul class='pagination'>#{pages.join("\n")}</ul></nav>".html_safe
  end

end

class SearchController < ApplicationController
  def index
    @members = SearchResults.new.search_members(params[:state])
  end
end

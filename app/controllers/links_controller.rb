class LinksController < ApplicationController

  def index
    @links = Link.hot_links
  end
end
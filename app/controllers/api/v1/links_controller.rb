class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: Link.hot_links
  end


  def create
    link = Link.find_or_initialize_by(link_params)
    if link.save && link.update_read_count
      render json: link
    else
      render json: link.errors.full_messages, status: 400
    end
  end

  private

  def link_params
    params.permit(:url)
  end

end
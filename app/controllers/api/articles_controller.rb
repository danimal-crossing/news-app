class Api::ArticlesController < ApplicationController

  def index
    @articles = HTTP.auth("Bearer #{Rails.application.credentials.news_api[:api_key]}").get("http://newsapi.org/v2/everything?q=bitcoin")
    render json: @articles.parse
  end

end

class Api::ArticlesController < ApplicationController

  def index
    @articles = HTTP.auth("Bearer <your-api-key>").get("http://newsapi.org/v2/everything?q=bitcoin")
    render json: @articles.parse
  end

end

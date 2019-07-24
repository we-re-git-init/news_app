class Api::ArticlesController < ApplicationController
  def index
    @articles = HTTP.get("https://newsapi.org/v2/everything?q=water&from=2019-06-24&sortBy=publishedAt&apiKey=#{ENV['api_key']}").parse
    render 'index.json.jb'
  end
end

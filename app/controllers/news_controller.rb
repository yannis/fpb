class NewsController < ApplicationController
  def index
    @title = "News"
    @news = New.where("news.published_on IS NOT NULL").order("news.published_on DESC")
  end
end

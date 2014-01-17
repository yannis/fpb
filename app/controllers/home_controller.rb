class HomeController < ApplicationController
  def index
    @title = "The Paul Brönnimann foundation"
    @new = New.order("news.published_on DESC").first
  end

  def council
    @title = "The foundation council"
    @council_members = CouncilMember.all
  end

  def legacy
    @title = "The legacy of Paul Brönnimann"
  end

  def paul_broennimann
    @title = "Paul Brönnimann"
  end

  def grants
    @title = "The FPB grants"
  end
end

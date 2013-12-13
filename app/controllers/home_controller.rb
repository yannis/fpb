class HomeController < ApplicationController
  def index
    @new = New.order("news.published_on DESC").first
  end

  def committee
    @committee_members = CommitteeMember.all
  end

  def legacy
  end

  def paul_broennimann
  end
end

class DashboardsController < ApplicationController

  def index
    @sprint = Sprint.current
    @absences = Absence.current
    @meetings = Meeting.today
    @this_week = Meeting.today
    @pull_requests = github_pull_requests
  end

  def github_pull_requests
    result = open('https://api.github.com/repos/openSUSE/open-build-service/pulls')
    content = result.read
    body = JSON.parse(content)
    if body.kind_of? Array
      pull_requests = []
      body.each do |pr|
        pull_requests << PullRequest.new(
          number: pr['number'],
          url: pr['html_url'],
          title: pr['title'],
          author: pr['user']['login'],
          gravatar: pr['user']['avatar_url'],
          created_at: pr['created_at'].to_date.strftime("%d-%m-%Y")
        )
      end
    end
    pull_requests
  end
end

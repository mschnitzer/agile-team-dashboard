class PullRequest
  include ActiveModel::Model
  attr_accessor :number, :url, :title, :author, :gravatar, :created_at
end


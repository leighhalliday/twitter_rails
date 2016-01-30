class NotifyMentionsJob < ApplicationJob
  queue_as :default

  def perform(tweet_id)
    tweet = Tweet.find(tweet_id)
    Mention.new(tweet).notify
  end
end

json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :user, :body, :retweet_count, :like_count
  json.url tweet_url(tweet, format: :json)
end

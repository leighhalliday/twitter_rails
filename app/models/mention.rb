class Mention

  attr_reader :tweet

  def initialize(tweet)
    @tweet = tweet
  end

  def notify
    users = find_users(extract_usernames)
    notify_users(users)
  end

  private

  def extract_usernames
    tweet.body.scan(/\@\w+/)
      .map{ |username| username.sub(/\@/, "").downcase }
      .uniq
  end

  def find_users(usernames)
    User.where(username: usernames)
  end

  def notify_users(users)
    users.each do |user|
      Notification.create!({
        user: user,
        tweet: tweet,
        ref_user: tweet.user,
        notification_type: "mention"
      })
    end
  end

end
require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet = tweets(:one)
  end

  test "should get index" do
    get tweets_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_url
    assert_response :success
  end

  test "should create tweet" do
    assert_difference('Tweet.count') do
      post tweets_url, params: { tweet: { body: @tweet.body, like_count: @tweet.like_count, retweet_count: @tweet.retweet_count, user: @tweet.user } }
    end

    assert_redirected_to tweet_path(Tweet.last)
  end

  test "should show tweet" do
    get tweet_url(@tweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_url(@tweet)
    assert_response :success
  end

  test "should update tweet" do
    patch tweet_url(@tweet), params: { tweet: { body: @tweet.body, like_count: @tweet.like_count, retweet_count: @tweet.retweet_count, user: @tweet.user } }
    assert_redirected_to tweet_path(@tweet)
  end

  test "should destroy tweet" do
    assert_difference('Tweet.count', -1) do
      delete tweet_url(@tweet)
    end

    assert_redirected_to tweets_path
  end
end

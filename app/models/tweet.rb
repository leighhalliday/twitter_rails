class Tweet < ApplicationRecord

  belongs_to :user

  validates :body, presence: true

  before_create :init_counts

  private

  def init_counts
    self.like_count = 0
    self.retweet_count = 0
  end

end

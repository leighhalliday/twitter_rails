class Notification < ApplicationRecord

  belongs_to :user
  belongs_to :tweet
  belongs_to :ref_user, class_name: "User"

  validates :notification_type, presence: true

end

class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :user
      t.references :tweet
      t.string :notification_type
      t.datetime :read_at
      t.references :ref_user

      t.timestamps
    end
  end
end

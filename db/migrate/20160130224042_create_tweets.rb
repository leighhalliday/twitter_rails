class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.references :user
      t.string :body
      t.integer :retweet_count
      t.integer :like_count

      t.timestamps
    end
  end
end

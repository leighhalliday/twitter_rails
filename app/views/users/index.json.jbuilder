json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :username, :bio
  json.url user_url(user, format: :json)
end

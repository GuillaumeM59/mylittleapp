json.array!(@users) do |user|
  json.extract! user, :id, :username, :avatar
  json.url user_url(user, format: :json)
end

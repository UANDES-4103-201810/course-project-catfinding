json.extract! user, :id, :name, :username, :mail, :birthday, :description, :lastlogin, :created_at, :updated_at
json.url user_url(user, format: :json)

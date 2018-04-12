json.extract! user, :id, :name, :address, :email, :birthday, :description, :laslogin, :isadmin, :created_at, :updated_at
json.url user_url(user, format: :json)

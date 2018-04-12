json.extract! admin, :id, :name, :mail, :birthday, :lastlogin, :address, :created_at, :updated_at
json.url admin_url(admin, format: :json)

json.extract! project, :id, :title, :markdown, :description, :goalamount, :currentamount, :approved, :deadline, :category_id, :created_at, :updated_at
json.url project_url(project, format: :json)

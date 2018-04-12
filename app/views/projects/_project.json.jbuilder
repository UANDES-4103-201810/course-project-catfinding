json.extract! project, :id, :tittle, :markdown, :description, :goalamount, :currentamount, :approved, :pendingapproval, :deadline, :category_id, :created_at, :updated_at
json.url project_url(project, format: :json)

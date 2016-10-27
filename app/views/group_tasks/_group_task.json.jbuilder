json.extract! group_task, :id, :name, :group_id, :created_at, :updated_at
json.url group_task_url(group_task, format: :json)
json.extract! fin_task, :id, :fin_day, :task_id, :created_at, :updated_at
json.url fin_task_url(fin_task, format: :json)
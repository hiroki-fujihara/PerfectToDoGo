json.extract! task, :id, :name, :content, :day, :important, :s_date, :file, :created_at, :updated_at
json.url task_url(task, format: :json)
json.extract! chatlog, :id, :user_id, :content, :group_id, :created_at, :updated_at
json.url chatlog_url(chatlog, format: :json)
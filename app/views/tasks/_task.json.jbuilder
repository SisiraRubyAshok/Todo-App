json.extract! task, :id, :todo, :category, :due_date, :priority, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)

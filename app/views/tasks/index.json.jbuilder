json.array! @tasks, partial: "tasks/task", as: :task
json.array!(@tasks) do |task|
  json.todo        task.todo
  json.category    task.category
 
end

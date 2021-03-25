json.array!(@results) do |result|
  json.todo result.todo
  # json.category result.category
  # json.url result.path(result)
end
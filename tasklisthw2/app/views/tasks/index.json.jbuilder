json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :tasklist_id, :priority, :duedate, :completed
  json.url task_url(task, format: :json)
end

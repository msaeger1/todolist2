json.array!(@todoitems) do |todoitem|
  json.extract! todoitem, :id, :due_date, :title, :description, :completed, :todo_list_id
  json.url todoitem_url(todoitem, format: :json)
end

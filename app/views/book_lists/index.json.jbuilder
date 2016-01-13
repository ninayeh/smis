json.array!(@book_lists) do |book_list|
  json.extract! book_list, :id
  json.url book_list_url(book_list, format: :json)
end

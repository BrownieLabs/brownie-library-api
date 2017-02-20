json.books do
  json.array! @books, partial: 'info', as: :book
end

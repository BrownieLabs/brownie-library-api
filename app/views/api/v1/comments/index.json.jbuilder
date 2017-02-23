json.comments do
  json.array! @comments, partial: 'info', as: :comment
end

json.extract! comment, :id, :comment, :teacher_id, :rating_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
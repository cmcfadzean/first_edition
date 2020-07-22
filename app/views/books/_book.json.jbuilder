json.extract! book, :id, :title, :genre, :description, :published, :created_at, :updated_at
json.url book_url(book, format: :json)

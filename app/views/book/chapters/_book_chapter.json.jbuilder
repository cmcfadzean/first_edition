json.extract! book_chapter, :id, :title, :body, :published, :created_at, :updated_at
json.url book_chapter_url(book_chapter, format: :json)

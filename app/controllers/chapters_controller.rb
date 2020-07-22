class ChaptersController < ApplicationController
  before_action :set_book
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  # GET books/1/chapters
  def index
    @chapters = @book.chapters
  end

  # GET books/1/chapters/1
  def show
  end

  # GET books/1/chapters/new
  def new
    @chapter = @book.chapters.build
  end

  # GET books/1/chapters/1/edit
  def edit
  end

  # POST books/1/chapters
  def create
    @chapter = @book.chapters.build(chapter_params)

    if @chapter.save
      redirect_to([@chapter.book, @chapter], notice: 'Chapter was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT books/1/chapters/1
  def update
    if @chapter.update_attributes(chapter_params)
      redirect_to([@chapter.book, @chapter], notice: 'Chapter was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE books/1/chapters/1
  def destroy
    @chapter.destroy

    redirect_to book_chapters_url(@book)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:book_id])
    end

    def set_chapter
      @chapter = @book.chapters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chapter_params
      params.require(:chapter).permit(:title, :body, :published)
    end
end

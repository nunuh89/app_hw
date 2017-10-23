class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to books_url
    else
      render json: book.errors.full_messages, status: unprocessable_entity
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      redirect_to books_url
    else
      render json: book.errors.full_messages, status: unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end

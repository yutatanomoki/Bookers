class BooksController < ApplicationController
  def top
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  
  def create
    @book = Book.new(book_params)
    if @book.save
        flash[:notice] = 'Book was successfully created.' 
        redirect_to book_path(@book)
    else
        @books = Book.all
        @book = Book.new
        render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end

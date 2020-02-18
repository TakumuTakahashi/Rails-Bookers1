class BooksController < ApplicationController
  def index
    # 投稿一覧部分
    @books = Book.all
    # 新規投稿部分
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = 'Book was successfully created.'
      redirect_to book_path(book)
    else
      @books = Book.all
      @book = Book.new
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = 'Book was successfully updated.'
      redirect_to book_path(book)
    else
      @book = Book.find(params[:id])
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = 'Book was successfully destroyed.'
    redirect_to root_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

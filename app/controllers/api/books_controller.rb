class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render 'index.json.jb'
  end

  def show
    @book = Book.find(params[:id])
    render 'show.json.jb'
  end

  def create
    @book = Book.new(
      title: params[:title],
      pages: params[:pages]
    )
    if @book.save
      render 'show.json.jb'
    else
      render json: { errors: @book.errors.full_messages }
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(
      title: params[:title] || @book.title,
      pages: params[:pages] || @book.pages
    )
      render 'show.json.jb'
    else
      render json: { errors: @book.errors.full_messages }
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render 'show.json.jb'
  end
end

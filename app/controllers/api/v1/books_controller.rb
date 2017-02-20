# encoding: utf-8

module Api
  module V1
    class BooksController < Api::V1::ApiController
      before_action :set_book, only: [:show]
      
      def index
        @books = Book.all
      end

      def show
      end
    
      private
      def set_book
        @book = Book.find(params[:id])
      end

      def book_params
        params.require(:book).permit(:title, :ISBN, :year)
      end
    end
  end
end

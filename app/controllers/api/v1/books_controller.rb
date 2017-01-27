# encoding: utf-8

module Api
  module V1
    class BooksController < Api::V1::ApiController
    	before_action :set_book, only: [:show]
			def show
				
			end
			
			def create
				@book = Book.create(book_params)
				if @book.save
					render json: @book.as_json(only: [:id]), status: :created
				else
					render json: { error: @book.error.as_json }, status: :unprocessable_entity
				end
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

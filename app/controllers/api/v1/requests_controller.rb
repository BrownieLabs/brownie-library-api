module Api
  module V1
    class RequestsController < Api::V1::ApiController
      before_action :set_book, only: [:create]

      def create
        request = @book.requests.new
        request.approved = false
        request.user = current_user
        request.save
      end

      private

      def set_book
        @book = Book.find(params[:book_id])
      end

    end
  end
end

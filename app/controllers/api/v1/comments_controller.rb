module Api
  module V1
    class CommentsController < Api::V1::ApiController
      before_action :set_book, only: [:create]

      def create
        comment = @book.comments.new(comment_params)
        comment.user = current_user
        comment.save
      end

      def index
        @comments = Comment.all
      end

      def show
        @comment = Comment.find(params[:id])
      end

      private

      def set_book
        @book = Book.find(params[:book_id])
      end

      def comment_params
        params.require(:comment).permit(:content)
      end

    end
  end
end

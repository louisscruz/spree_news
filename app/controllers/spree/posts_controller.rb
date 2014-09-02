module Spree
  class PostsController < BaseController

    def index
      @posts = Spree::Post.published.order(:event_date)
    end

    def show
      @post = Spree::Post.find(params[:id])
    end

    private

    def post_params
      params.require(:post).permit(:title, :published, :description, :event_date, :event_venue, :event_link)
    end

  end
end

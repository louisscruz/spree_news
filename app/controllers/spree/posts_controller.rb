module Spree
  class PostsController < BaseController

    def index
      @posts = Spree::Post.published.latest
    end

    def show
      @post = Spree::Post.find(params[:id])
    end

    private

    def post_params
      params.require(:post).permit(:title, :published, :event_date, :event_venue, :event_link)
    end

  end
end

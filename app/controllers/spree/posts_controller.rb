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
      params.require(:post).permit(:title, :description, :published, :event_month, :event_day, :event_year, :event_time)
    end

  end
end

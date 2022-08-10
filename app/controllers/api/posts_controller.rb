class Api::PostsController < ApiController
  def index
    posts = current_user.posts
    render json: posts
  end

  def show
    post = current_user.posts.find_by(id: params[:id])

    if post
      render json: post
    else
      render json: :nothing, status: :not_found
    end
  end
end

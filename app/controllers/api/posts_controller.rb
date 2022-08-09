class Api::PostsController < ApiController
  def index
    posts = Post.where(usuario: current_user)
    render json: posts
  end
end

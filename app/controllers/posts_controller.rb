class PostsController < ApplicationController
  # def index
  #   # p = Post.find "dc738c18ebd8d606f8181ed30a027f90e022a2a9"
  #   # render json: {title: p.title}
  #   render json: {title: p.title}
  # end

  timeout 1
  def index
    # renders Lambda Proxy structure compatible with API Gateway
    render json: {hello: "world", action: "index"}
  end

  def show
    id = params[:id] # params available
    # puts goes to the lambda logs
    render json: {action: "show", id: id}
  end

  node :node_example
end

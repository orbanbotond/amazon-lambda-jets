class PostsController < ApplicationController
  def index
    p = Post.find "dc738c18ebd8d606f8181ed30a027f90e022a2a9"
    render json: {title: p.title}
  end
end

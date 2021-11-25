class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.create(
      title: params['title'],
      image: params['image'],
      content: params['content']
    )

    @post.content.gsub!('spoiler', '')

    if @post.save
      redirect_to root_path
    end
  end
end

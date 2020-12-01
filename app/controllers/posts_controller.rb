class PostsController < ApplicationController
    def show
        @posts = Post.all
    end

    def new
        @post= Post.new
    end

    def create
        post =current_user.post.new(post_params)
        if @post.save
            redirect_to root_url
        else
            render :new
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :image)
        
    end
end

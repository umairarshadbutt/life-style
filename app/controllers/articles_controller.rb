class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end

    def show 
        @article = Article.all
    end
    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to root_url
    end


    private
        def article_params
            params.require(article).permit(:title, :body, :image)
        end
end

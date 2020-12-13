class VotesController < ApplicationController
    def create
        v = current_user.votes.new(article_id: params[:article_id])
        return unless v.save
    
        Article.find(params[:article_id]).increment!(:vote_count)
        redirect_back(fallback_location: root_path)
      end
    
      def destroy
        v = Vote.find_by(user_id: current_user.id, article_id: params[:article_id])
        return unless v
    
        Article.find(params[:article_id]).decrement!(:vote_count) if v.destroy
        redirect_back(fallback_location: root_path)
      end
end

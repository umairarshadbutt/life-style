module TagsHelper
    def vote_button(article)
        return if current_user.nil?
    
        if article.votes.map(&:user_id).any?(current_user.id)
          link_to 'Remove Vote', article_vote_path(article), method: :delete, class: 'btn btn-danger'
        else
          link_to 'Vote', article_votes_path(article), method: :post, class: 'btn btn-primary'
        end
      end
end

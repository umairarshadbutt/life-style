class AddAttachmentToArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :image
    add_attachment :articles, :image 
  end
end

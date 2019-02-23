class AddEmailOtherArticlesToOtherArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :other_articles, :other_articlesEmail, :string
  end
end

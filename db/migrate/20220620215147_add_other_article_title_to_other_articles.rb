class AddOtherArticleTitleToOtherArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :other_articles, :other_articleTitle, :string
  end
end

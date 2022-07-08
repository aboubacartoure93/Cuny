class AddWebsiteToUniversities < ActiveRecord::Migration[7.0]
  def change
    add_column :universities, :website, :string
  end
end

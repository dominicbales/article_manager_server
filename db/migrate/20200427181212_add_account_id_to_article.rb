class AddAccountIdToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :account_id, :integer
  end
end

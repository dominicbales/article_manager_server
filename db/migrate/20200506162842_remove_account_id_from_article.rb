class RemoveAccountIdFromArticle < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :account_id
  end
end

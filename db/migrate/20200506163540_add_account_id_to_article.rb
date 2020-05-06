class AddAccountIdToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :account, null: false, foreign_key: true
  end
end

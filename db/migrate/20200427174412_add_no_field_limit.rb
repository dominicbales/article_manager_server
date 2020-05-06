class AddNoFieldLimit < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :title, :string, :limit => nil
    change_column :articles, :link, :string, :limit => nil
    change_column :articles, :avatar, :string, :limit => nil

  end
end

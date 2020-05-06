class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.string :avatar
      t.string :time

      t.timestamps
    end
  end
end

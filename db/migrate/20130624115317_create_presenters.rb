class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :name
      t.string :email
      t.string :github_username
      t.string :twitter_username

      t.timestamps
    end
  end
end

class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :title
      t.text :description
      t.datetime :scheduled_at

      t.references :presenter
      t.timestamps
    end
  end
end

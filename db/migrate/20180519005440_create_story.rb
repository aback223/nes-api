class CreateStory < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.datetime :created_at
    end
  end
end

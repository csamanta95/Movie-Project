class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.string :description
      t.string :image_url
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end

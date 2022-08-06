class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.text :image
      t.integer :num_of_seasons
    end
  end
end

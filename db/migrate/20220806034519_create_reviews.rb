class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      t.string :name
  end
end

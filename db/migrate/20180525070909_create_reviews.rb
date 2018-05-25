class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :space, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end

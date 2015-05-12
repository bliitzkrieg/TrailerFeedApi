class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :video
      t.string :length

      t.timestamps null: false
    end
  end
end

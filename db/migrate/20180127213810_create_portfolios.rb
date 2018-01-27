class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_imaage
      t.text :thumb_image

      t.timestamps
    end
  end
end

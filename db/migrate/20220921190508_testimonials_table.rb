class TestimonialsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials do |t|
      t.string :testimony
      t.integer :user_id
      t.integer :article_id
      t.timestamps
    end
  end
end

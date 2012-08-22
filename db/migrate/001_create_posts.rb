class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table "posts" do |t|
      t.text      "content"
      t.string    "name"
      t.integer   "poster_id"
      t.boolean   "good"
      t.text      "enc_content"
    end
  end

  def self.down 
    drop_table "posts"
  end

end
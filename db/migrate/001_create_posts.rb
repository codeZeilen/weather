class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table "posts" do |t|
      t.text      "content"
      t.string    "name"
      t.references :poster
      t.boolean   "good"
    end
  end

  def self.down 
    drop_table "posts"
  end

end

class CreatePosters < ActiveRecord::Migration
  def self.up
    create_table "posters" do |t|
      t.string    "email"
    end
  end

  def self.down 
    drop_table "posters"
  end

end

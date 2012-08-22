class CreateSympathies < ActiveRecord::Migration
  def self.up
    create_table "sympathies" do |t|
      t.string "name"
      t.integer "post_id"
    end
  end

  def self.down 
    drop_table "sympathies"
  end

end

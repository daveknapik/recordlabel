class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :title
      t.date :release_date
      t.text :description
      t.text :track_listing
      t.string :format
      t.belongs_to :artist
      
      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end

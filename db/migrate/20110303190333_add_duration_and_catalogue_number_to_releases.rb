class AddDurationAndCatalogueNumberToReleases < ActiveRecord::Migration
  def self.up
    add_column :releases, :duration, :string
    add_column :releases, :catalogue_number, :string
  end

  def self.down
    remove_column :releases, :catalogue_number
    remove_column :releases, :duration
  end
end

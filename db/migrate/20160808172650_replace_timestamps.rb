class ReplaceTimestamps < ActiveRecord::Migration
  def change
    remove_column :tracks, :created_at
    remove_column :tracks, :updated_at
    add_timestamps :tracks
  end
end

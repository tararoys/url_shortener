class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table short_urls do |t|
      t.string :long
      t.string :short

      t.timestamps
  end
end

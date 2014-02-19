class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.string :longform
      t.string :shortform

      t.timestamps
    end
  end
end

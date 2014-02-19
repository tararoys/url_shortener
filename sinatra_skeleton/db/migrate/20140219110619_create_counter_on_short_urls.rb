class CreateCounterOnShortUrls < ActiveRecord::Migration
  def change
    add_column :short_urls, :click_counter, :integer, default: 0
  end
end

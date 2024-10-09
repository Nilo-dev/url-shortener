class AddCounterToUrls < ActiveRecord::Migration[7.2]
  def change
    add_column :urls, :counter, :integer
  end
end

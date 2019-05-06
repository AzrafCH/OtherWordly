class AddColumnToMoments < ActiveRecord::Migration[5.2]
  def change
    add_column :moments, :post_title, :string
  end
end

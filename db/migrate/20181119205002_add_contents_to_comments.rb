class AddContentsToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :contents, :string
  end
end

class AddPostconfirmToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :postconfirm, :boolean
  end
end

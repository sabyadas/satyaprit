class AddSchoolToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :school, :string
  end
end

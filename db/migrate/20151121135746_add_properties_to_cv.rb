class AddPropertiesToCv < ActiveRecord::Migration
  def change
    add_column :cvs, :cv_name, :string
    add_column :cvs, :cv_text, :text
  end
end

class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.timestamps null: false
    end
  end
end

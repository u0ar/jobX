class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string        :company
      t.string        :position
      t.text          :description
      t.datetime      :deadline
      t.string        :url
      t.timestamps null: false
    end
  end
end

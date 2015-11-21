class AddCvToJobs < ActiveRecord::Migration
  def change
    add_column :cvs, :job_id, :integer
    add_index(:cvs, :job_id)
  end
end

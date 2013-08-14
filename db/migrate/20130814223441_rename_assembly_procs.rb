class RenameAssemblyProcs < ActiveRecord::Migration
  def change
  	rename_table(:assembly_procs, :assembly_projects)
  end
end

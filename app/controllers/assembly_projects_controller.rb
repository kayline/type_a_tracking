class AssemblyProjectsController < ApplicationController
	include Sorting

	def show
		@assembly_project = AssemblyProject.find(params[:id])
		@machine = @assembly_project.machine
		tasks = @machine.assem_tasks_machines
		@subassemblies = Subassembly.all
		@sorted_tasks = hash_by_subassembly(tasks)
	end

end

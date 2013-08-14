class MachinesController < ApplicationController
	def index
		@machines = Machine.all
	end

	def new
		@machine = Machine.new
	end

	def create
		p params
		@machine = Machine.new(machine_params)
		if @machine.save
			@assembly_process = AssemblyProc.create
			@machine.assembly_procs << @assembly_process
			redirect_to machines_path
		else
			render :new
			puts "Issue with machine creation"
		end
	end

	private
  def machine_params
    params.require(:machine).permit(:serial_num, :customer_id)
  end
end

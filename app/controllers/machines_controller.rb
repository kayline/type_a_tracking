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
		@machine.build_assembly_project
		if @machine.save
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

class Machine < ActiveRecord::Base
	has_many :assembly_procs
	has_many :assem_tasks_machines
	# at some point maybe a one-to-one, but for now leave it loose
end

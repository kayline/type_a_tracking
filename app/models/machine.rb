class Machine < ActiveRecord::Base
	has_one :assembly_project
	has_many :assem_tasks_machines
end

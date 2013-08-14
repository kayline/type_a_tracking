class AssemTask < ActiveRecord::Base
	belongs_to :subassembly
	has_many :assem_tasks_machines
end

class AssemblyProc < ActiveRecord::Base
	belongs_to :machine
	has_many :subassem_procs
end

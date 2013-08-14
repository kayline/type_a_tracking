class SubassemProc < ActiveRecord::Base
	belongs_to :assembly_proc
	has_many :assem_tasks
end

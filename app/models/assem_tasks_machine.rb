class AssemTasksMachine < ActiveRecord::Base
	belongs_to :machine 
	belongs_to :assem_task
	delegate :subassembly, :to => :assem_task
	delegate :title, :to => :assem_task
	delegate :description, :to => :assem_task


end

class Subassembly < ActiveRecord::Base
	has_many :assem_tasks
	validates :name, :presence => true
end

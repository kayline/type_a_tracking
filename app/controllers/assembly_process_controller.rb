class AssemblyProcessController < ApplicationController
	def edit
		@subassemblies = Subassembly.order("stage")
	end
end

module Sorting
	extend ActiveSupport::Concern

	def hash_by_subassembly(tasks)
		@subassemblies = Subassembly.all
		results = {}
		@subassemblies.each do |sa|
			results[sa] = tasks.select { |t| t.subassembly == sa }
		end
		return results
	end

end
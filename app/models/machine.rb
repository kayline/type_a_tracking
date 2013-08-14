class Machine < ActiveRecord::Base
	has_many :assembly_procs
	# at some point maybe a one-to-one, but for now leave it loose
end

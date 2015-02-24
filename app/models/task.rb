class Task < ActiveRecord::Base
	
	def is_assigned_to_mike?
		return self.assignedto == 'Mike'
	end
end

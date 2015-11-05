class Task < ActiveRecord::Base
	has_one :tasklist

	def tasklistname
		name
	end
end

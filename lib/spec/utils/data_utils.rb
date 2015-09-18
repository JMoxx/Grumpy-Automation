class DataUtils

	def generate_random_name
		('a'..'z').to_a.shuffle[0,8].join
	end
end

class TodoList

	def initialize(list)
		@list = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@list
	end

	def add_item(string)
		@list << string 
	end

	def delete_item(string)
		@list.delete(string)
	end

	def get_index(index)
		@list[index]
	end
end
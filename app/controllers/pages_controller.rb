class PagesController < ApplicationController
	def home 
		@users = User.all
		@cats = Cat.all
		@todos = Todos.all
		@unfinished_tasks ||= []
		@finished_tasks ||= []
		@todos.each do |t|
			if t.finished 
				@finished_tasks << t 
			else
				@unfinished_tasks << t
			end
		end
	end 
end

module CommentHelper

	def time_helper
		@comment_time = @comment.datetime.from_now
	end
end

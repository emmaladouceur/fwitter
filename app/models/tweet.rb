class Tweet

	attr_accessor :user, :message

	ALL_MESSAGES = []

	def initialize(user, message)
		@user = user
		@message = message
		ALL_MESSAGES << self
	end

	def self.all_messages
		ALL_MESSAGES
	end


	# def user
	# 	@user
	# end

	# def user=(user)
	# 	@user = user
	# end

	# def message
	# 	@message
	# end

	# def message=(message)
	# 	@message = message
	# end

end







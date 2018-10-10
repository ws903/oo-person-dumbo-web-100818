class Person
	attr_reader(:name)
	attr_accessor(:bank_account)
	attr_writer(:happiness)

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness
		if @happiness > 10
			@happiness = 10
		elsif @happiness < 0
			@happiness = 0
		else
			@happiness = @happiness
		end
	end

	def happiness=(user_num)
		if user_num > 10
			@happiness = 10
		elsif user_num < 0
			@happiness = 0
		else
			@happiness = user_num
		end
	end

	def hygiene
		if @hygiene > 10
			@hygiene = 10
		elsif @hygiene < 0
			@hygiene = 0
		else
			@hygiene = @hygiene
		end
	end

	def hygiene=(user_num)
		if user_num > 10
			@hygiene = 10
		elsif user_num < 0
			@hygiene = 0
		else
			@hygiene = user_num
		end
	end

	def happy?
		if @happiness > 7
			true
		else
			false
		end
	end

	def clean?
		if @hygiene > 7
			true
		else
			false
		end
	end

	def get_paid(paycheck)
		@bank_account += paycheck
		return "all about the benjamins"
	end

	def take_bath
		@hygiene += 4
		self.hygiene=(@hygiene)
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@hygiene -= 3
		@happiness += 2
		self.hygiene=(@hygiene)
		self.happiness=(@happiness)
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		@happiness += 3
		friend.happiness += 3
		self.happiness=(@happiness)
		return "Hi #{friend.name}! It's #{@name}. How are you?"
	end

	def start_conversation(friend, topic)
		if topic.downcase == "politics"
			friend.happiness -= 2
			self.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic.downcase == "weather"
			friend.happiness += 1
			self.happiness += 1
			return "blah blah sun blah rain"
		elsif topic.downcase == "programming"
			return "blah blah blah blah blah"
		end
	end
end
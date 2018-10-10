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
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end
end
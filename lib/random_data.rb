module RandomData

	def self.random_paragraph
		sentences  = []
		rand(4..6).times do
			sentences << random_sentence
		end

		sentences.join(" ")
	end

	def self.random_sentence
		strings = []
		rand(3..8).times do
			strings << random_word
		end

		sentence = strings.join(" ")
		sentence.capitalize << "."
	end

	def self.random_question_body
		the_question = []
		1.times do
			the_question << random_question
		end

		the_question.join(" ")
	end

	def self.random_question
		strings_one = []
		rand(3..8).times do
			strings_one << random_word
		end

		question = strings_one.join(" ")
		question.capitalize << "?"
	end

	def self.random_word
		letters = ('a'..'z').to_a
		letters.shuffle!
		letters[0,rand(3..8)].join
		# Join the zeroth through nth item in letters
		# The nth item is the result of rand*3..8)
		# which returns a random number >= three & < 8.
	end
end
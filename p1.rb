# frozen_string_literal: true

puts('The game Rock-paper-scissors by Shkilnyi V. CS31')

options = %w[Rock Paper Scissors]
messageWin = 'You Win!'
messageLose = 'You Lose!'

if ARGV.empty?
	puts('Make a choice:')
	puts("1 - #{options[0]}")
	puts("2 - #{options[1]}")
	puts("3 - #{options[2]}")
	puts('Enter your choice:')

	input = gets.chomp
else
	input = ARGV[0].dup
end

input.strip!

if input.casecmp(options[0]).zero?
	number = 1
elsif input.casecmp(options[1]).zero?
	number = 2
elsif input.casecmp(options[2]).zero?
	number = 3
elsif !input.to_i.zero?
	number = input.to_i
else
	puts 'Input error, check if the input is correct'
	return
end

number -= 1
rundNumber = rand(0..2)

puts("You: #{options[number]}")
puts("Bot: #{options[rundNumber]}")

if number == rundNumber
	puts('Draw!')
elsif number > rundNumber
	if number == 2
		puts(messageLose)
	else
		puts(messageWin)
	end
elsif rundNumber == 2
	puts(messageWin)
else
	puts(messageLose)
end

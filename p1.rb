puts('The game Rock-paper-scissors by Shkilnyi V. CS31')

options = ['Rock', 'Paper', 'Scissors']

if ARGV.empty
  puts('Make a choice:')
  puts("1 - #{options[0]}")
  puts("2 - #{options[1]}")
  puts("3 - #{options[2]}")
  puts("Enter your choice:")

  input = gets.chomp
else
  input = ARGV[0]
end

puts(input)